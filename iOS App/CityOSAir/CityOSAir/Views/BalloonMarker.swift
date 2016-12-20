//
//  BalloonMarker.swift
//  CityOSAir
//
//  Created by Andrej Saric on 19/12/2016.
//  Copyright © 2016 CityOS. All rights reserved.
//

import Foundation
import Charts


open class BalloonMarker: MarkerImage
{
    open var color: UIColor?
    open var arrowSize = CGSize(width: 15, height: 11)
    open var font: UIFont?
    open var textColor: UIColor?
    open var insets = UIEdgeInsets()
    open var minimumSize = CGSize()
    
    fileprivate var labelns: NSMutableAttributedString?
    fileprivate var _labelSize: CGSize = CGSize()
    fileprivate var _paragraphStyle: NSMutableParagraphStyle?
    
    public init(color: UIColor, font: UIFont, textColor: UIColor, insets: UIEdgeInsets)
    {
        super.init()
        
        self.color = color
        self.font = font
        self.textColor = textColor
        self.insets = insets
        
        _paragraphStyle = NSParagraphStyle.default.mutableCopy() as? NSMutableParagraphStyle
        _paragraphStyle?.alignment = .center
    }
    
    open override func offsetForDrawing(atPoint point: CGPoint) -> CGPoint
    {
        let size = self.size
        var point = point
        point.x -= size.width / 2.0
        point.y -= size.height
        return super.offsetForDrawing(atPoint: point)
    }
    
    open override func draw(context: CGContext, point: CGPoint)
    {
        if labelns == nil
        {
            return
        }
        
        let offset = self.offsetForDrawing(atPoint: point)
        let size = self.size
        
        var rect = CGRect(
            origin: CGPoint(
                x: point.x + offset.x,
                y: point.y + offset.y),
            size: size)
        rect.origin.x -= size.width / 2.0
        rect.origin.y -= size.height
        
        if let color = color
        {
            var myRect = rect
            myRect.size.height -= arrowSize.height
            let bezier = UIBezierPath(roundedRect: myRect, cornerRadius: 5)
            
            bezier.addLine(to: CGPoint(
                x: rect.origin.x + (rect.size.width + arrowSize.width) / 2.0,
                y: rect.origin.y + rect.size.height - arrowSize.height))
            
            bezier.addLine(to: CGPoint(
                x: rect.origin.x + rect.size.width / 2.0,
                y: rect.origin.y + rect.size.height))
            
            bezier.addLine(to: CGPoint(
                x: rect.origin.x + (rect.size.width - arrowSize.width) / 2.0,
                y: rect.origin.y + rect.size.height - arrowSize.height))
            
            color.setFill()
            UIColor.lightGray.setStroke()
            bezier.stroke()
            bezier.fill()
        }
        
        rect.origin.y += self.insets.top
        rect.size.height -= self.insets.top + self.insets.bottom
        
        labelns?.draw(in: rect)
    }
    
    open func setLabel(_ timestamp: String, value: String, notation: String)
    {
        
        let attributedTimestamp = NSMutableAttributedString(string: timestamp, attributes: [NSFontAttributeName: UIFont.appRegularWithSize(6), NSForegroundColorAttributeName: UIColor.lightGray])
        
        let attributedValue = NSMutableAttributedString(string: value, attributes: [NSFontAttributeName: UIFont.appMediumWithSize(8), NSForegroundColorAttributeName: UIColor.black])
        
        let attributedNotation = NSMutableAttributedString(string: " \(notation)", attributes: [NSFontAttributeName: UIFont.appRegularWithSize(6), NSForegroundColorAttributeName: UIColor.lightGray])

        attributedTimestamp.append(NSAttributedString(string: "\n"))
        attributedTimestamp.append(attributedValue)
        attributedTimestamp.append(attributedNotation)
        
        attributedTimestamp.addAttribute(NSParagraphStyleAttributeName, value: _paragraphStyle as Any, range: NSRange(location: 0, length: attributedTimestamp.length))
        
        labelns = attributedTimestamp
        
        _labelSize = labelns?.size() ?? CGSize.zero
        
        var size = CGSize()
        size.width = _labelSize.width + self.insets.left + self.insets.right
        size.height = _labelSize.height + self.insets.top + self.insets.bottom
        size.width = max(minimumSize.width, size.width)
        size.height = max(minimumSize.height, size.height)
        
        size.width += 30
        
        self.size = size
    }
}



