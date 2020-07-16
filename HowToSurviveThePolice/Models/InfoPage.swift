//
//  Before.swift
//  HowToSurviveThePolice
//
//  Created by Angelina Olmedo on 7/9/20.
//  Copyright © 2020 ACAB. All rights reserved.
//

import Foundation
import UIKit

struct InfoPage {
    var title: String
    var icon: UIImage?
    var textFileName: String
    
    init(title: String, icon: UIImage?, textFileName: String) {
        self.title = title
        if let icon = icon ?? UIImage(named: "icon_\(textFileName)") {
            self.icon = icon.withTintColor(UIColor.systemTeal)
        } else {print("Couldn't find \(textFileName)")}
        self.textFileName = textFileName
    }
}

// all pages init here
let beforePages: [InfoPage] = [
    InfoPage(title: "Find a Protest", icon: nil, textFileName: "FindAProtest"),
    InfoPage(title: "What to Bring", icon: nil, textFileName: "WhatToBring"),
    InfoPage(title: "What to Wear", icon: nil, textFileName: "WhatToWear")
]
let duringPages: [InfoPage] = [
    InfoPage(title: "Mace", icon: UIImage(systemName: "dot.radiowaves.left.and.right"), textFileName: "Mace"),
    InfoPage(title: "Rubber Bullets", icon: UIImage(systemName: "trash.fill"), textFileName: "RubberBullets"),
    InfoPage(title: "Tear Gas", icon: UIImage(systemName: "cloud.fill"), textFileName: "TearGas")
]
