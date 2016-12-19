//
//  CustomStackView.swift
//  UIDemo
//
//  Created by Jianing Zheng on 12/19/16.
//  Copyright © 2016 Jianing Zheng. All rights reserved.
//

import UIKit

class CustomStackView: UIStackView {

    override init(frame: CGRect) {
        super.init(frame: frame)
    
        axis = .vertical
        distribution = .equalSpacing
        spacing = 5
        
        let itemView = ItemView()
        itemView.configUI(key: "aa", value: "bb")
        addArrangedSubview(itemView)
        
        let itemView2 = ItemView()
        itemView2.configUI(key: "aa", value: "bb")
        addArrangedSubview(itemView2)
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
