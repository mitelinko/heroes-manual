//
//  ProvideResourcesViewController.swift
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class ProvideResourcesViewController: GeneralMenuController {
    
    let SimbaGreen = UIColor(red: 36/255, green: 185/255, blue: 102/255, alpha: 1.0)
    let SimbaPurple = UIColor(red: 59/255, green: 2/255, blue: 96/255, alpha: 1.0)
    
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
        navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: SimbaGreen]
        self.navigationItem.title = "Provide Resources"
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if (self.isMovingFromParentViewController) {
            
            // Return navbar styling back to normal
            let navBar = self.navigationController?.navigationBar
            navBar?.prefersLargeTitles = false
            navBar?.barTintColor = UIColor.white
            navBar?.tintColor = SimbaGreen
            navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
            self.navigationItem.largeTitleDisplayMode = .never
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func applyButtonStyle(btn: UIButton) -> Void {
        btn.layer.cornerRadius = 10
        btn.layer.borderColor = UIColor.lightGray.cgColor
        setButtonShadow(btn: btn, color: UIColor.lightGray.cgColor)
    }
    
    func setButtonShadow(btn: UIButton, color: CGColor) -> Void {
        btn.layer.shadowColor = color
        btn.layer.shadowOffset = CGSize(width: 0, height: 0)
        btn.layer.shadowOpacity = 1.0
    }
}



