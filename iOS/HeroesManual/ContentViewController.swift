//
//  ContentViewController.swift
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
    
    let SimbaGreen = UIColor(red: 36/255, green: 185/255, blue: 102/255, alpha: 1.0)
    let SimbaPurple = UIColor(red: 59/255, green: 2/255, blue: 96/255, alpha: 1.0)
    
    // MARK: Properties
    
    // MARK: Actions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Stylize the navigation bar
        var navBar = self.navigationController?.navigationBar
        navBar?.prefersLargeTitles = true
        navBar?.barTintColor = SimbaPurple
        navBar?.tintColor = UIColor.white
        navBar?.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        self.navigationItem.title = "Communication Tips"
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if (self.isMovingFromParentViewController) {
            
            // Return navbar styling back to normal
            var navBar = self.navigationController?.navigationBar
            navBar?.prefersLargeTitles = false
            navBar?.barTintColor = UIColor.white
            navBar?.tintColor = SimbaGreen
            navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
            self.navigationItem.largeTitleDisplayMode = .never
        }
    }
}



