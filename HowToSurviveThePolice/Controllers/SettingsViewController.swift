//
//  SettingsViewController.swift
//  HowToSurviveThePolice
//
//  Created by Angelina Olmedo on 7/16/20.
//  Copyright © 2020 ACAB. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    @IBOutlet weak var languageControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func languageChanged(_ sender: Any) {
        // 0 - English - ""
        // 1 - Spanish - "-Spanish"
        var newLanguage: String = "" // should be overwritten if different
        if languageControl.selectedSegmentIndex == 0 {
            print("switching language to english")
        }
        else {
            newLanguage = "-Spanish"
            print("switching language to spanish")
        }
        print(newLanguage)
        defaults.set(newLanguage, forKey: "language")
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
