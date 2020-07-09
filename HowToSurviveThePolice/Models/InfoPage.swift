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
        self.icon = icon
        self.textFileName = "Resources/Text/\(textFileName).txt"
    }
}

// all pages init here
let before: [InfoPage] = [
    InfoPage(title: "Find a Protest", icon: nil, textFileName: "Before/FindAProtest"),
    InfoPage(title: "What to Bring", icon: nil, textFileName: "Before/WhatToBring"),
    InfoPage(title: "What to Wear", icon: nil, textFileName: "Before/WhatToWear")
]
