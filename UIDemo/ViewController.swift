//
//  ViewController.swift
//  UIDemo
//
//  Created by Jianing Zheng on 12/19/16.
//  Copyright © 2016 Jianing Zheng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var scrollView: UIScrollView!
    var heroImageView: HeroImageView!
    var infoView: InfoView!
    var stackView: CustomStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.white
        
        let viewModel = ViewModel()
        
        scrollView = UIScrollView()
        scrollView.alwaysBounceVertical = true
        view.addSubview(scrollView)

        heroImageView = HeroImageView(image: UIImage(named: viewModel.imageName))
        infoView = InfoView()
        stackView = CustomStackView()
        
        scrollView.addSubview(heroImageView)
        scrollView.addSubview(infoView)
        scrollView.addSubview(stackView)
        
        infoView.configCellWithViewModel(viewModel: viewModel)
        stackView.configCellWithViewModel(viewModel: viewModel)
        setUpConstraints()
    }
    
    private func setUpConstraints() {
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        heroImageView.translatesAutoresizingMaskIntoConstraints = false
        heroImageView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor).isActive = true
        heroImageView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor).isActive = true
        heroImageView.topAnchor.constraint(equalTo: scrollView.topAnchor).isActive = true
        heroImageView.widthAnchor.constraint(equalTo: scrollView.widthAnchor).isActive = true
        heroImageView.heightAnchor.constraint(equalTo: heroImageView.widthAnchor, multiplier: heroImageView.ratio)
        
        infoView.translatesAutoresizingMaskIntoConstraints = false
        infoView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20).isActive = true
        infoView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20).isActive = true
        infoView.topAnchor.constraint(equalTo: heroImageView.bottomAnchor, constant: 20).isActive = true
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 20).isActive = true
        stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -20).isActive = true
        stackView.topAnchor.constraint(equalTo: infoView.bottomAnchor, constant: 20).isActive = true
        stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor).isActive = true
    }
    
}

