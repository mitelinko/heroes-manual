//
//  UserAgreementViewController.swift
//  HeroesManual
//
//  Created by Colby Chance on 3/29/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class UserAgreementViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var acceptButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        titleLabel.backgroundColor = SIMBA_UI_COLORS.purple
        acceptButton.backgroundColor = SIMBA_UI_COLORS.green
    }
    
    override func viewDidAppear(_ animated: Bool) {
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "UserAgreed"{
            UserDefaults.standard.set(USER_METADATA.currentAgreementValue, forKey: USER_METADATA.agreementKey)
        }
    }

}
