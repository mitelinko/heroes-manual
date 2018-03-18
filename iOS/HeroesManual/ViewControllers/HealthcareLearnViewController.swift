//
//  HealthcareLearnViewController.swift
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class HealthcareLearnViewController: GeneralMenuController {
    
    // MARK: Properties
    @IBOutlet weak var generalButton: UIButton!
    @IBOutlet weak var victimButton: UIButton!
    @IBOutlet weak var perpButton: UIButton!
    @IBOutlet weak var screeningButton: UIButton!
    @IBOutlet weak var communicationButton: UIButton!
    @IBOutlet weak var safetyPlanButton: UIButton!
    
    // MARK: Actions
    @IBAction func generalButtonPressed(_ sender: UIButton) {
        pushContentPage(page: CONTENT_PAGES.generalInfo)
    }
    
    @IBAction func victimButtonPressed(_ sender: UIButton) {
        pushContentPage(page: CONTENT_PAGES.fillerContent)
    }
    
    @IBAction func perpButtonPressed(_ sender: UIButton) {
        pushContentPage(page: CONTENT_PAGES.beingAPerpetrator)
    }
    
    @IBAction func screeningButtonPressed(_ sender: UIButton) {
        pushContentPage(page: CONTENT_PAGES.fillerContent)
    }
    
    @IBAction func communicationButtonPressed(_ sender: UIButton) {
        pushContentPage(page: CONTENT_PAGES.fillerContent)
    }
    
    @IBAction func safetyPlanButtonPressed(_ sender: UIButton) {
        pushContentPage(page: CONTENT_PAGES.safetyPlanResources)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Get them  buttons organized and lookin good
        var buttonList: [UIButton] = [UIButton]()
        buttonList.append(generalButton)
        buttonList.append(victimButton)
        buttonList.append(perpButton)
        buttonList.append(screeningButton)
        buttonList.append(communicationButton)
        buttonList.append(safetyPlanButton)
        for btn in buttonList {
            applyButtonStyle(btn: btn)
        }
        
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let navBar = self.navigationController?.navigationBar
        navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: SIMBA_UI_COLORS.green]
        self.navigationItem.title = "Learn More"
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



