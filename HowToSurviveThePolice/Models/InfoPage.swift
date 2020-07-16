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
        self.icon = icon ?? UIImage(named: "icon_\(textFileName)")!.withTintColor(UIColor.systemTeal)
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
    InfoPage(title: "Mace", icon: UIImage(named: "icon_Mace_ThanksGeorge"), textFileName: "Mace"),
    InfoPage(title: "Rubber Bullets", icon: UIImage(named: "icon_RubberBullets_ThanksGeorge"), textFileName: "RubberBullets"),
    InfoPage(title: "Tear Gas", icon: UIImage(named: "icon_TearGas_ThanksGeorge"), textFileName: "TearGas")
]
