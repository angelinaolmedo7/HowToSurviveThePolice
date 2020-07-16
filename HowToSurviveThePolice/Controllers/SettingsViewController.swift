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
    @IBOutlet weak var languageLabel: UILabel!
    @IBOutlet weak var darkModeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        languageControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .selected)
        languageControl.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.white], for: .normal)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let savedLang = LanguageOptions(rawValue: defaults.object(forKey: "language") as? String ?? "English")
        updatePageLanguage(lang: savedLang ?? LanguageOptions.english)
    }
    
    @IBAction func languageChanged(_ sender: Any) {
        // 0 - English - ""
        // 1 - Spanish - "-Spanish"
        var newLanguage: String = "" // should be overwritten if different
        if languageControl.selectedSegmentIndex == 0 {
//            print("switching language to english")
        }
        else {
            newLanguage = "-Spanish"
//            print("switching language to spanish")
        }
        defaults.set(newLanguage, forKey: "language")
        updatePageLanguage(lang: LanguageOptions(rawValue: newLanguage) ?? LanguageOptions.english)
    }
    
    func updatePageLanguage(lang: LanguageOptions) {
        switch lang {
        case .english:
            languageControl.selectedSegmentIndex = 0
            languageLabel.text = "Your language: English"
            darkModeLabel.text = "Dark Mode"
            self.title = "Settings"
        case .spanish:
            languageControl.selectedSegmentIndex = 1
            languageLabel.text = "Tu lenguaje: Español"
            darkModeLabel.text = "Modo Oscuro"
            self.title = "Configuración"
        }
    }
}
