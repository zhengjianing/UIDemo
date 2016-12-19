//
//  InfoView.swift
//  UIDemo
//
//  Created by Jianing Zheng on 12/19/16.
//  Copyright © 2016 Jianing Zheng. All rights reserved.
//

import UIKit

class InfoView: UIView {
    
    var nameLabel: UILabel!
    var addressLabel: UILabel!
    var detailButton: UIButton!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        nameLabel = createNameLabel()
        addressLabel = createAddressLabel()
        detailButton = createDetailButton()
        
        addSubview(nameLabel)
        addSubview(addressLabel)
        addSubview(detailButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func layoutSubviews() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true

        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        addressLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        addressLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        addressLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
        
        detailButton.translatesAutoresizingMaskIntoConstraints = false
        detailButton.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        detailButton.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        detailButton.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 20).isActive = true
        detailButton.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }
    
    private func createNameLabel() -> UILabel {
        let nameLabel = UILabel()
        nameLabel.text = "name"
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        return nameLabel
    }
    
    private func createAddressLabel() -> UILabel {
        let addressLabel = UILabel()
        addressLabel.text = "This is an address"
        addressLabel.font = UIFont.systemFont(ofSize: 14)
        return addressLabel
    }
    
    private func createDetailButton() -> UIButton {
        let detailButton = UIButton()
        detailButton.setTitle("Click Here", for: .normal)
        detailButton.setTitleColor(UIColor.blue, for: .normal)
        detailButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        detailButton.layer.borderWidth = 1.0
        detailButton.layer.borderColor = UIColor.blue.cgColor
        detailButton.layer.cornerRadius = 3.0
        detailButton.contentEdgeInsets = UIEdgeInsetsMake(12.0, 20.0, 12.0, 20.0)
        return detailButton
    }
}
