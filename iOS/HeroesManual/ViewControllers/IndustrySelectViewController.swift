//
//  IndustrySelectViewController
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class IndustrySelectViewController: GeneralMenuController {
    
    //MARK: Properties
    @IBOutlet weak var healthcareButton: UIButton!
    @IBOutlet weak var lawEnforcementButton: UIButton!
    @IBOutlet weak var socialWorkButton: UIButton!
    @IBOutlet weak var justiceButton: UIButton!
    
    //MARK: Actions
    @IBAction func healthcareButton(_ sender: Any) {
        UserDefaults.standard.set("Healthcare", forKey: "Inudstry")
    }
    
    @IBAction func lawEnforcementButton(_ sender: Any) {
        UserDefaults.standard.set("Law Enforcement", forKey: "Inudstry")
    }
    
    @IBAction func socialWorkButton(_ sender: Any) {
        UserDefaults.standard.set("Social Work", forKey: "Inudstry")
    }
    
    @IBAction func justiceButton(_ sender: Any) {
        UserDefaults.standard.set("Justice", forKey: "Inudstry")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        styleButtons(healthcareButton, lawEnforcementButton, socialWorkButton, justiceButton)
        
        // Stylize the navigation bar
        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = UIColor.white
        navBar?.tintColor = SIMBA_UI_COLORS.green
        navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        self.navigationItem.largeTitleDisplayMode = .never
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

