//
//  ChartView.swift
//  CityOSAir
//
//  Created by Andrej Saric on 29/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit
import Charts

class ChartView: UIView {
    
    let pm25xValue: [Double] = [0, 12, 35.5, 55.5, 150.5, 250.5]
    let pm10xValue: [Double] = [0, 54, 154, 254, 354, 424]
    var xCounter = 0
    
    lazy var chartView: LineChartView = {
        
        let chart = LineChartView()
        chart.gridBackgroundColor = .clear
        
        chart.leftAxis.enabled = true
        chart.rightAxis.enabled = true
        chart.legend.enabled = false
        
        chart.xAxis.labelPosition = .bottom
        chart.xAxis.drawAxisLineEnabled = false
        chart.leftAxis.drawAxisLineEnabled = false
        chart.xAxis.drawGridLinesEnabled = false
        chart.leftAxis.drawGridLinesEnabled = true
        chart.rightAxis.drawAxisLineEnabled = false
        
        chart.xAxis.setLabelCount(4, force: true)
        chart.xAxis.avoidFirstLastClippingEnabled = true
        
        chart.xAxis.labelFont = Styles.Graph.GraphLabels.font
        chart.xAxis.labelTextColor = Styles.Graph.GraphLabels.tintColor
        
        chart.leftAxis.labelFont = Styles.Graph.GraphLabels.font
        chart.leftAxis.labelTextColor = Styles.Graph.GraphLabels.tintColor
        chart.leftAxis.gridColor = Styles.Graph.GraphLabels.lineColor
        
        chart.rightAxis.labelFont = Styles.Graph.GraphLabels.font
        chart.rightAxis.labelTextColor = Styles.Graph.GraphLabels.textColor
        
//        chart.extraLeftOffset = 10 * UIDevice.delta
//        chart.extraBottomOffset = 20 * UIDevice.delta
        chart.extraTopOffset = 100
        
        chart.scaleYEnabled = false
        chart.scaleXEnabled = false
        chart.pinchZoomEnabled = false
        chart.doubleTapToZoomEnabled = false
        chart.highlightPerTapEnabled = true
        chart.highlightPerDragEnabled = true
        
        chart.noDataText = "Fetching data . . ."
        chart.noDataTextColor = Styles.Graph.HeaderText.tintColor
        chart.chartDescription?.text = ""
        chart.isUserInteractionEnabled = true
        
        chart.rightAxis.labelPosition = .insideChart
        
        chart.rightAxis.xOffset = 10
        chart.rightAxis.yOffset = -20
        
        chart.marker = BalloonMarker(color: .white, font: UIFont.systemFont(ofSize: 12), textColor: .black, insets: UIEdgeInsets(top: 10, left: 10, bottom: 20, right: 10))
        
        chart.delegate = self
        
        return chart
    }()
    
    lazy var numberFormatter: NumberFormatter = {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.roundingMode = .floor
        formatter.maximumFractionDigits = 2
        formatter.minimumFractionDigits = 0
        return formatter
    }()
    
    fileprivate var timestamps = [String]()
    
    var notation: String!
    
    func setupConstraints() {
        self.addSubview(chartView)
        
        self.addConstraintsWithFormat("H:|[v0]|", views: chartView)
        self.addConstraintsWithFormat("V:|[v0]|", views: chartView)
    }
    
    func updateChart(chartPoints: [ChartPoint]) {
        
        let dataPoints = chartPoints.map { $0.xLabel }
        let values = chartPoints.map { $0.value }
        
        for i in 0..<dataPoints.count {
            chartView.data?.addEntry(ChartDataEntry(x: Double(i), y: values[i]), dataSetIndex: 0)
        }

        chartView.setVisibleXRange(minXRange: chartView.data!.xMin, maxXRange: chartView.data!.xMax)
        chartView.notifyDataSetChanged()
        chartView.moveViewToX(values.last!)
    }
    
    func setChart(chartPoints: [ChartPoint]?, readingType: ReadingType) {
                
        guard let chartPoints = chartPoints else {
            chartView.noDataText = "Unable to retrieve data."
            chartView.notifyDataSetChanged()
            return
        }
        
        if chartPoints.count == 0 {
            chartView.noDataText = "No data to show."
            chartView.notifyDataSetChanged()
            return
        }
        
        let dataPoints = chartPoints.map { $0.xLabel }
        let values = chartPoints.map { $0.value }
        
        timestamps = dataPoints
        
        let chartFormatter = ChartFormatter()
        chartFormatter.timestamps = dataPoints
        chartView.xAxis.valueFormatter = chartFormatter
        
        var dataEntries: [ChartDataEntry] = []
        
        for i in 0..<dataPoints.count {
            let dataEntry = ChartDataEntry(x: Double(i), y: values[i])
            dataEntries.append(dataEntry)
        }
        
        let lineChartDataSet = LineChartDataSet(values: dataEntries, label: "Values")
        
        lineChartDataSet.mode = .cubicBezier
        lineChartDataSet.lineWidth = 0
        lineChartDataSet.circleRadius = 0
        lineChartDataSet.drawValuesEnabled = false

        lineChartDataSet.highlightColor = .white
        
        lineChartDataSet.drawVerticalHighlightIndicatorEnabled = false
        lineChartDataSet.drawHorizontalHighlightIndicatorEnabled = false
        
        var gradientColors = Styles.GraphColors.defaultGradientColors as CFArray
        
        var colorLocations:[CGFloat] = Styles.GraphColors.defaultGradientLocations
        
        if readingType == .pm25 || readingType == .pm10 {
        
            let numberOfGradientsToLeave = setupLabelsFor(min: 0, max: lineChartDataSet.yMax, readingType: readingType)
            
            //remove from the beginning to get to numberOfGradientsToLeave
            gradientColors = Array(Styles.GraphColors.pmGradientColors.dropFirst(6 - numberOfGradientsToLeave)) as CFArray
            
            
            let incremental: CGFloat = 1.0 / CGFloat(numberOfGradientsToLeave - 1)
            
            colorLocations = [0.0]
            
            for num in 1..<numberOfGradientsToLeave {
                colorLocations.append(incremental * CGFloat(num))
            }
            
            colorLocations = colorLocations.reversed()
            
        }else {
            chartView.leftAxis.valueFormatter = DefaultAxisValueFormatter(formatter: self.numberFormatter)
            chartView.rightAxis.enabled = false
        }
        
        if let gradient = CGGradient(colorsSpace: CGColorSpaceCreateDeviceRGB(), colors: gradientColors, locations: colorLocations) {
            
            lineChartDataSet.fill = Fill.fillWithLinearGradient(gradient, angle: 90.0)
        }
        
        lineChartDataSet.fillAlpha = 0.66
        lineChartDataSet.drawFilledEnabled = true
        
        
        let lineChartData = LineChartData(dataSet: lineChartDataSet)
        
        chartView.data = lineChartData
        
        chartView.animate(xAxisDuration: 2.0, yAxisDuration: 2.0)
    }
    
    fileprivate func setupLabelsFor(min: Double = 0, max: Double, readingType: ReadingType) -> Int {
        
        let xValues = readingType == .pm10 ? pm10xValue : pm25xValue
        
        var xMax = 0.0
        
        for num in xValues {
            if num > max && xMax < max {
               xMax = num
            }
        }
        
        if xMax == 0.0 {
            xMax = max
        }
        
        var filteredX = xValues.filter { $0 >= min && $0 <= xMax }
        
        let numberOfLabels = filteredX.count

        chartView.leftAxis.axisMinimum = min
        chartView.leftAxis.axisMaximum = xMax
        
//        chartView.leftAxis.valueFormatter = DefaultAxisValueFormatter(block: { (value, axisBase) -> String in
//            
//            if self.xCounter >= numberOfLabels {
//                self.xCounter = 0
//            }
//            
//            let num = Double(filteredX[self.xCounter])
//            
//            self.xCounter += 1
//            
//            return "\(num)"
//            
//        })
        
        chartView.rightAxis.valueFormatter = DefaultAxisValueFormatter(block: { value, axisBase -> String in
            
            if self.xCounter >= numberOfLabels {
                self.xCounter = 0
            }
            
            let num = filteredX[self.xCounter]
            
            self.xCounter += 1
            
            
            
//            switch num {
//            case 0:
//                return "Great"
//            case 155:
//                return "Sensitive beware\n\n\t\t⠀⠀⠀OK"
//            case 355:
//                return "Very Unhealthy\n\n⠀⠀⠀ Unhealthy"
//            case 425:
//                return "\n\nHazardous"
//            default:
//                return "\n\nHazardous"
//            }
//            [0, 54, 154, 254, 354, 424]
//            [0, 12, 35.5, 55.5, 150.5, 250.5]
            
            if readingType == .pm10 {
                switch num {
                case 0:
                    return "Great"
                case 54:
                    return "OK"
                case 154:
                    return "Sensitive beware"
                case 254:
                    return "Unhealthy"
                case 354:
                    return "Very Unhealthy"
                case 424:
                    return "Hazardous"
                default:
                    return "Hazardous"
                }
            }else {
                switch num {
                case 0:
                    return "Great"
                case 12:
                    return "OK"
                case 35.5:
                    return "Sensitive beware"
                case 55.5:
                    return "Unhealthy"
                case 150.5:
                    return "Very Unhealthy"
                case 250.5:
                    return "Hazardous"
                default:
                    return "Hazardous"
                }
            }
        })
        
        chartView.leftAxis.setLabelCount(numberOfLabels, force: true)
        chartView.rightAxis.setLabelCount(numberOfLabels, force: true)
        
        return numberOfLabels
    }
    
    func commonInit() {
        self.setupConstraints()
    }
    
    init(notation: String) {
        super.init(frame: CGRect.zero)
        commonInit()
        self.notation = notation
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
}

extension ChartView: ChartViewDelegate {
    func chartValueSelected(_ chartView: ChartViewBase, entry: ChartDataEntry, highlight: Highlight) {
        
        let timestamp = timestamps[Int(entry.x)]
        
        if let marker = chartView.marker as? BalloonMarker {
            marker.setLabel(timestamp, value: "\(entry.y)", notation: notation)
        }
        
    }
}

class ChartFormatter: NSObject, IAxisValueFormatter {
    
    var timestamps = [String]()
    
    func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return timestamps[Int(value)]
    }
}
