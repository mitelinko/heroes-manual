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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let id = segue.identifier {
            if let profession = HOME_SEGUES_DICTIONARY[id] {
                saveUserWith(profession: profession)
            } else {
                print("Saving Profession Error")
            }
        }
    }
}

