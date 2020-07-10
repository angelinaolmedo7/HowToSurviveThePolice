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
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    func setDetails(page: InfoPage) {
        self.titleLabel.text = page.title
        self.bodyTextLabel.text = page.textFileName
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
