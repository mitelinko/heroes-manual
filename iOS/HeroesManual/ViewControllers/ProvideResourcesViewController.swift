//
//  ProvideResourcesViewController.swift
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class ProvideResourcesViewController: GeneralMenuController {
    
    // MARK: Properties
    @IBOutlet weak var safetyPlanButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get them  buttons organized and lookin good
        applyButtonStyle(btn: safetyPlanButton)
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let navBar = self.navigationController?.navigationBar
        navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: SIMBA_UI_COLORS.green]
        self.navigationItem.title = "Provide Resources"
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



