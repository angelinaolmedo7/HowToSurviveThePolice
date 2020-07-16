//
//  NotesViewController.swift
//  HowToSurviveThePolice
//
//  Created by Angelina Olmedo on 7/16/20.
//  Copyright © 2020 ACAB. All rights reserved.
//

import UIKit

class NotesViewController: UIViewController {
    
    let defaults = UserDefaults.standard
    
    @IBOutlet weak var saveTextButton: UIBarButtonItem!
    @IBOutlet weak var notesTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let savedText = defaults.object(forKey: "notes") as? String ?? "Type anything here"
        notesTextView.text = savedText
        
        if notesTextView.text == "" {
            notesTextView.text = "Type anything here"
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let savedLang = LanguageOptions(rawValue: defaults.object(forKey: "language") as? String ?? "English")
        updatePageLanguage(lang: savedLang ?? LanguageOptions.english)
    }
    
    @IBAction func saveTextPressed(_ sender: Any) {
//        print("saving text")
        defaults.set(notesTextView.text, forKey: "notes")
    }
    
    func updatePageLanguage(lang: LanguageOptions) {
        switch lang {
        case .english:
            if notesTextView.text == "Escribe cualquier cosa aquí" {
                notesTextView.text = "Type anything here"
            }
            self.title = "Notes"
        case .spanish:
            if notesTextView.text == "Type anything here" {
                notesTextView.text = "Escribe cualquier cosa aquí"
            }
            self.title = "Notas"
        }
    }
    
}
