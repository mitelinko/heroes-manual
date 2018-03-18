//
//  HealthcareHomeViewController.swift
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class HealthcareHomeViewController: GeneralMenuController {
    
    let SimbaGreen = UIColor(red: 36/255, green: 185/255, blue: 102/255, alpha: 1.0)
    let SimbaPurple = UIColor(red: 59/255, green: 2/255, blue: 96/255, alpha: 1.0)
    
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
        
        // Get them  buttons organized and lookin good
        var buttonList: [UIButton] = [UIButton]()
        buttonList.append(screenForDvButton)
        buttonList.append(provideResourcesButton)
        buttonList.append(whatToSayButton)
        buttonList.append(learnButton)
        for btn in buttonList {
            applyButtonStyle(btn: btn)
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


