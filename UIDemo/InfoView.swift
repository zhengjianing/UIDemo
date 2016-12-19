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
    
    fileprivate var compactConstraints = [NSLayoutConstraint]()
    fileprivate var regularConstraints = [NSLayoutConstraint]()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        nameLabel = createNameLabel()
        addressLabel = createAddressLabel()
        detailButton = createDetailButton()
        
        addSubview(nameLabel)
        addSubview(addressLabel)
        addSubview(detailButton)
        
        setUpConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configCellWithViewModel(viewModel: ViewModel) {
        nameLabel.text = viewModel.name
        addressLabel.text = viewModel.address
        detailButton.setTitle(viewModel.buttonTitle, for: .normal)
    }
    
    override func traitCollectionDidChange(_ previousTraitCollection: UITraitCollection?) {
        super.traitCollectionDidChange(previousTraitCollection)
        
        if traitCollection.horizontalSizeClass == .compact {
            NSLayoutConstraint.deactivate(regularConstraints)
            NSLayoutConstraint.activate(compactConstraints)
        } else {
            NSLayoutConstraint.deactivate(compactConstraints)
            NSLayoutConstraint.activate(regularConstraints)
        }
    }
    
    private func setUpConstraints() {
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true

        addressLabel.translatesAutoresizingMaskIntoConstraints = false
        addressLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        addressLabel.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 10).isActive = true
        
        detailButton.translatesAutoresizingMaskIntoConstraints = false
        detailButton.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        
        compactConstraints.append(nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor))
        compactConstraints.append(addressLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor))
        compactConstraints.append(detailButton.leadingAnchor.constraint(equalTo: self.leadingAnchor))
        compactConstraints.append(detailButton.leadingAnchor.constraint(equalTo: self.leadingAnchor))
        compactConstraints.append(detailButton.topAnchor.constraint(equalTo: addressLabel.bottomAnchor, constant: 20))
        compactConstraints.append(detailButton.bottomAnchor.constraint(equalTo: self.bottomAnchor))
        
        regularConstraints.append(nameLabel.trailingAnchor.constraint(equalTo: detailButton.leadingAnchor))
        regularConstraints.append(addressLabel.widthAnchor.constraint(equalTo: nameLabel.widthAnchor))
        regularConstraints.append(addressLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor))
        regularConstraints.append(detailButton.topAnchor.constraint(equalTo: self.topAnchor))
        regularConstraints.append(detailButton.widthAnchor.constraint(equalToConstant: 150))
    }
    
    private func createNameLabel() -> UILabel {
        let nameLabel = UILabel()
        nameLabel.font = UIFont.systemFont(ofSize: 20)
        return nameLabel
    }
    
    private func createAddressLabel() -> UILabel {
        let addressLabel = UILabel()
        addressLabel.font = UIFont.systemFont(ofSize: 16)
        addressLabel.numberOfLines = 0
        return addressLabel
    }
    
    private func createDetailButton() -> UIButton {
        let detailButton = UIButton()
        detailButton.setTitleColor(UIColor.blue, for: .normal)
        detailButton.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        
        detailButton.layer.borderWidth = 1.0
        detailButton.layer.borderColor = UIColor.blue.cgColor
        detailButton.layer.cornerRadius = 3.0
        detailButton.contentEdgeInsets = UIEdgeInsetsMake(12.0, 20.0, 12.0, 20.0)
        return detailButton
    }
}
