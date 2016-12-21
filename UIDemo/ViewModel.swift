//
//  ViewModel.swift
//  UIDemo
//
//  Created by Jianing Zheng on 12/19/16.
//  Copyright © 2016 Jianing Zheng. All rights reserved.
//

import Foundation

struct ViewModel {

    var imageName: String {
        return "dog.jpg"
    }
    
    var name: String {
        return "Name"
    }
    
    var address: String {
        return "Multiple lines address. Multiple lines address. Multiple lines address. Multiple lines address. Multiple lines address"
    }
    
    var buttonTitle: String {
        return "Click"
    }
    
    var stackViewContent: Array<(String, String)> {
        return [
            ("key1", "value1"),
            ("key2", "value2"),
            ("key3", ""),
            ("key4", "value4")
        ].filter({key, value -> Bool in
            return !value.isEmpty
        })
    }
}
