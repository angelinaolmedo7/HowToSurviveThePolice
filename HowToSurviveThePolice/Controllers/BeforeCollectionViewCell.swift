//
//  BeforeCollectionViewCell.swift
//  HowToSurviveThePolice
//
//  Created by Angelina Olmedo on 7/9/20.
//  Copyright © 2020 ACAB. All rights reserved.
//

import UIKit

class BeforeCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var icon: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setUpCell(info: InfoPage) {
        self.icon.image = info.icon ?? UIImage.checkmark
        titleLabel.text = info.title
        titleLabel.isHidden = false
    }
}
