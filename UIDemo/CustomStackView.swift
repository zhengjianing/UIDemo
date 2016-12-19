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
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configCellWithViewModel(viewModel: ViewModel) {
        for item in viewModel.stackViewContent {
            let itemView = ItemView()
            itemView.configItemViewWithItem(item: item)
            addArrangedSubview(itemView)
        }
    }
}
