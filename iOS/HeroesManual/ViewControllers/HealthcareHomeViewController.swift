//
//  HealthcareHomeViewController.swift
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class HealthcareHomeViewController: GeneralMenuController {
    
    // MARK: Properties
    @IBOutlet weak var screenForDvButton: UIButton!
    @IBOutlet weak var provideResourcesButton: UIButton!
    @IBOutlet weak var whatToSayButton: UIButton!
    @IBOutlet weak var learnButton: UIButton!
    
    // MARK: Actions
    
    @IBAction func screenForDVButtonPressed(_ sender: UIButton) {
        pushContentPage(page: CONTENT_PAGES.screeningContent)
    }
    
    @IBAction func provideResourcesButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func whatToSayButtonPressed(_ sender: UIButton) {
        pushContentPage(page: CONTENT_PAGES.communicationTips)
    }
    
    @IBAction func learnButtonPressed(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleButtons(screenForDvButton, provideResourcesButton, whatToSayButton, learnButton)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


