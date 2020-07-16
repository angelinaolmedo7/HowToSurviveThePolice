//
//  InfoPageViewController.swift
//  HowToSurviveThePolice
//
//  Created by Angelina Olmedo on 7/10/20.
//  Copyright © 2020 ACAB. All rights reserved.
//

import UIKit

class InfoPageViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView! // linked for debugging
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyTextLabel: UILabel!
    
    var page: InfoPage!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setDetails(page: page)
    }
    
    func setDetails(page: InfoPage) {
        self.titleLabel.text =  page.title
        self.bodyTextLabel.text = retrieveText(fileName: page.textFileName) // add user.language here
    }

    func retrieveText(fileName: String, lang: LanguageOptions = .english) -> String {
        let fullFileName = "\(fileName)\(lang.rawValue)"
        
        var text: String = "ERROR" // should be overwritten
        if let filepath = Bundle.main.path(forResource: fullFileName, ofType: "txt") {
            do {
                text = try String(contentsOfFile: filepath)
            } catch {
                print("Read the file bad for \(fullFileName)")
            }
        } else {
            print("Couldn't find file \(fullFileName)")
        }
        return text
    }

}
