//
//  ReadingTableViewCell.swift
//  CityOSAir
//
//  Created by Andrej Saric on 29/08/16.
//  Copyright © 2016 CityOS. All rights reserved.
//

import UIKit

class ReadingTableViewCell: UITableViewCell {

    let typeImage: UIImageView = {
        let img = UIImageView()
        img.contentMode = .scaleAspectFit
        return img
    }()
    
    let identifierLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.DataCell.IdentifierLabel.font
        lbl.textColor = Styles.DataCell.IdentifierLabel.tintColor
        return lbl
    }()
    
    let readingLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.DataCell.ReadingLabel.numberFont
        lbl.textColor = Styles.DataCell.ReadingLabel.tintColor
        return lbl
    }()
    
    let notationLabel: UILabel = {
        let lbl = UILabel()
        lbl.font = Styles.DataCell.NotationLabel.identifierFont
        lbl.textColor = Styles.DataCell.NotationLabel.tintColor
        return lbl
    }()
    
    let rightArrow: UIImageView = {
        let img = UIImageView(image: UIImage(named: "map-detail-arrow"))
        img.translatesAutoresizingMaskIntoConstraints = false
        return img
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        initialize()
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        initialize()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    func configure(_ readingType: ReadingType, value: String) {
        typeImage.image = UIImage(named: readingType.image)
        readingLabel.text = value
        notationLabel.text = readingType.unitNotation
        
        if readingType == ReadingType.pm25 {
            let attributed = NSMutableAttributedString(string: readingType.identifier, attributes: [NSFontAttributeName:Styles.DataCell.IdentifierLabel.font])
            
            attributed.setAttributes([NSFontAttributeName:Styles.DataCell.IdentifierLabel.subscriptFont,NSBaselineOffsetAttributeName:-10], range: NSRange(location:2,length:3))
            
            identifierLabel.attributedText = attributed
        }else {
            identifierLabel.text = readingType.identifier
        }
    }
    
    fileprivate func initialize() {
        
        backgroundColor = .clear
        
        contentView.addSubview(rightArrow)
        contentView.addSubview(typeImage)
        contentView.addSubview(identifierLabel)
        contentView.addSubview(readingLabel)
        contentView.addSubview(notationLabel)

        contentView.addConstraintsWithFormat("H:|-15-[v0(30)]-15-[v1]", views: typeImage, identifierLabel)
        contentView.addConstraintsWithFormat("H:[v0][v1]-15-[v2]-25-|", views: readingLabel, notationLabel, rightArrow)
        
        contentView.addConstraint(NSLayoutConstraint(item: typeImage, attribute: .centerY, relatedBy: .equal, toItem: contentView, attribute: .centerY, multiplier: 1, constant: 0))
        
        contentView.addConstraint(NSLayoutConstraint(item: identifierLabel, attribute: .centerY, relatedBy: .equal, toItem: typeImage, attribute: .centerY, multiplier: 1, constant: 0))

        contentView.addConstraint(NSLayoutConstraint(item: readingLabel, attribute: .centerY, relatedBy: .equal, toItem: typeImage, attribute: .centerY, multiplier: 1, constant: 0))

        contentView.addConstraint(NSLayoutConstraint(item: notationLabel, attribute: .lastBaseline, relatedBy: .equal, toItem: readingLabel, attribute: .lastBaseline, multiplier: 1, constant: 0))
        
        contentView.addConstraint(NSLayoutConstraint(item: rightArrow, attribute: .centerY, relatedBy: .equal, toItem: typeImage, attribute: .centerY, multiplier: 1, constant: 0))
        
        rightArrow.contentMode = .scaleAspectFit
        
        rightArrow.heightAnchor.constraint(equalToConstant: 18).isActive = true
        rightArrow.widthAnchor.constraint(equalToConstant: 18).isActive = true
        
        //contentView.addConstraint(NSLayoutConstraint(item: rightArrow, attribute: .top, relatedBy: .equal, toItem: notationLabel, attribute: .top, multiplier: 1, constant: 0))
        //contentView.addConstraint(NSLayoutConstraint(item: rightArrow, attribute: .bottom, relatedBy: .equal, toItem: notationLabel, attribute: .bottom, multiplier: 1, constant: 0))
        
    }
}

extension ReadingTableViewCell: Reusable {}
