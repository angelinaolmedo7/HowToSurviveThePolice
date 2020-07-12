//
//  InfoPageViewController.swift
//  HowToSurviveThePolice
//
//  Created by Angelina Olmedo on 7/10/20.
//  Copyright © 2020 ACAB. All rights reserved.
//

import UIKit

class InfoPageViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bodyTextLabel: UILabel!
    
    var page: InfoPage!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.setDetails(page: page)
    }
    
    func setDetails(page: InfoPage) {
        self.titleLabel.text =  page.title
        self.bodyTextLabel.text = getText(page.textFileName)
    }

    func getText(_ textFileName: String) -> String {
        var text: String = "ERROR" // should be overwritten
        
        if let filepath = Bundle.main.path(forResource: textFileName, ofType: "txt") {
            do {
                text = try String(contentsOfFile: filepath)
            } catch {
                print("Read the file bad for \(textFileName)")
            }
        } else {
            print("Couldn't find file \(textFileName)")
        }
        
        return text
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
