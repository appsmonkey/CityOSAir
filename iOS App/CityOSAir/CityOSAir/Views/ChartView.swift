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
    
    lazy var chartView: LineChartView = {
        
        let chart = LineChartView()
        chart.gridBackgroundColor = .clear
        
        chart.leftAxis.enabled = true
        chart.rightAxis.enabled = false
        chart.legend.enabled = false
        
        chart.xAxis.labelPosition = .bottom
        chart.xAxis.drawAxisLineEnabled = false
        chart.leftAxis.drawAxisLineEnabled = false
        chart.xAxis.drawGridLinesEnabled = false
        chart.leftAxis.drawGridLinesEnabled = false
        
        chart.xAxis.setLabelCount(4, force: true)
        chart.xAxis.avoidFirstLastClippingEnabled = true
        
        chart.xAxis.labelFont = Styles.Graph.GraphLabels.font
        chart.xAxis.labelTextColor = Styles.Graph.GraphLabels.tintColor
        chart.leftAxis.labelFont = Styles.Graph.GraphLabels.font
        chart.leftAxis.labelTextColor = Styles.Graph.GraphLabels.tintColor

        chart.extraLeftOffset = 10 * UIDevice.delta
        chart.extraBottomOffset = 20 * UIDevice.delta
        
        chart.scaleYEnabled = false
        chart.scaleXEnabled = false
        chart.pinchZoomEnabled = false
        chart.doubleTapToZoomEnabled = false
        chart.highlightPerTapEnabled = true
        chart.highlightPerDragEnabled = true
        
        chart.noDataText = "Fetching data . . ."
        chart.noDataTextColor = .white
        chart.chartDescription?.text = ""
        chart.isUserInteractionEnabled = false
        
        chart.leftAxis.valueFormatter = DefaultAxisValueFormatter(formatter: self.numberFormatter)

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
    
    func setupConstraints() {
        self.addSubview(chartView)
        
        self.addConstraintsWithFormat("H:|[v0]|", views: chartView)
        self.addConstraintsWithFormat("V:|[v0]|", views: chartView)
    }
    
    func setChart(chartPoints: [ChartPoint]) {
        
        let dataPoints = chartPoints.map { $0.xLabel }
        let values = chartPoints.map { $0.value }
        
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
        lineChartDataSet.lineWidth = 2
        lineChartDataSet.circleRadius = 0
        lineChartDataSet.drawValuesEnabled = false
        lineChartDataSet.colors = [UIColor .white]

        lineChartDataSet.highlightColor = .white
        
        let lineChartData = LineChartData(dataSet: lineChartDataSet)
        
        chartView.data = lineChartData
    }
    
    func commonInit() {
        self.setupConstraints()
    }
    
    init() {
        super.init(frame: CGRect.zero)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
}

class ChartFormatter: NSObject, IAxisValueFormatter {
    
    var timestamps = [String]()
    
    func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        return timestamps[Int(value)]
    }
}