//
//  SafetyPlanViewController.swift
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class SafetyPlanViewController: GeneralMenuController {
    
    // MARK: Properties
    @IBOutlet weak var qrCodeButton: UIButton!
    @IBOutlet weak var webPageButton: UIButton!
    
    // MARK: Actions
    @IBAction func webPageButtonPressed(_ sender: UIButton) {
        let url = URL(string: "http://www.ncdsv.org/images/DV_Safety_Plan.pdf")!
        UIApplication.shared.openURL(url)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get them  buttons organized and lookin good
        var buttonList: [UIButton] = [UIButton]()
//        buttonList.append(qrCodeButton)
        buttonList.append(webPageButton)
        
        for btn in buttonList {
            applyButtonStyle(btn: btn)
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = SIMBA_UI_COLORS.purple
        navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        self.navigationItem.title = "Safety Plan resources"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if (self.isMovingFromParentViewController) {
            
            // Return navbar styling back to normal
            let navBar = self.navigationController?.navigationBar
            navBar?.prefersLargeTitles = false
            navBar?.barTintColor = UIColor.white
            navBar?.tintColor = SIMBA_UI_COLORS.green
            navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
            self.navigationItem.largeTitleDisplayMode = .never
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}



