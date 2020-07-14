//
//  ColorSet.swift
//  HowToSurviveThePolice
//
//  Created by Angelina Olmedo on 7/12/20.
//  Copyright © 2020 ACAB. All rights reserved.
//

import Foundation
import UIKit

enum ColorOptions {
    case lightMode
    case darkMode
}

struct ColorSet {
    let bgColor: UIColor!
    let textColor: UIColor!
    let accentColor: UIColor!
    
    init (bgColor: UIColor?, textColor: UIColor?, accentColor: UIColor?) {
        self.bgColor = bgColor ?? UIColor.white
        self.textColor = textColor ?? UIColor.black
        self.accentColor = accentColor ?? UIColor.systemBlue
    }
}

let lightmode = ColorSet(bgColor: nil, textColor: nil, accentColor: nil)
