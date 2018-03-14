//
//  ViewController.swift
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let SimbaGreen = UIColor(red: 36/255, green: 185/255, blue: 102/255, alpha: 1.0)
    let SimbaPurple = UIColor(red: 59/255, green: 2/255, blue: 96/255, alpha: 1.0)
    
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
        
        var buttonList: [UIButton] = [UIButton]()
        buttonList.append(healthcareButton)
        buttonList.append(lawEnforcementButton)
        buttonList.append(socialWorkButton)
        buttonList.append(justiceButton)
        
        for btn in buttonList {
            setButtonShadow(btn: btn, color: UIColor.black)
        }
        
//        var selectedIndustryButton = UIButton()
//        if (UserDefaults.standard.string(forKey: "Industry") != nil) {
//            if (UserDefaults.standard.string(forKey: "Industry") == "Healthcare") {
//                selectedIndustryButton = healthcareButton
//                print("healtchare")
//            } else if (UserDefaults.standard.string(forKey: "Industry") == "Law Enforcement") {
//                selectedIndustryButton = lawEnforcementButton
//                print("law")
//            } else if (UserDefaults.standard.string(forKey: "Industry") == "Social Work") {
//                selectedIndustryButton = socialWorkButton
//                print("social work")
//            } else if (UserDefaults.standard.string(forKey: "Inustry") == "Justice")  {
//                selectedIndustryButton = justiceButton
//                print("justice")
//            }
//            setShadowSelected(btn: selectedIndustryButton)
//        } else {
//            print("no profession selected")
//        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setButtonShadow(btn: UIButton, color: UIColor) -> Void {
        btn.layer.shadowColor = color.cgColor
        btn.layer.shadowRadius = 5
        btn.layer.shadowOffset = CGSize(width: 0, height: 0)
        btn.layer.shadowOpacity = 1.0
    }
}

