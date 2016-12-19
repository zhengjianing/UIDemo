//
//  HeroImageView.swift
//  UIDemo
//
//  Created by Jianing Zheng on 12/19/16.
//  Copyright © 2016 Jianing Zheng. All rights reserved.
//

import UIKit

class HeroImageView: UIImageView {
    
    var heroImageView: UIImageView!
    
    override init(image: UIImage?) {
        super.init(image: image)
        self.image = image ?? UIImage(named: "dog.jpg")
        self.clipsToBounds = true
        contentMode = .scaleAspectFill
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    var ratio: CGFloat {
        return self.image!.size.height / self.image!.size.width
    }
}
