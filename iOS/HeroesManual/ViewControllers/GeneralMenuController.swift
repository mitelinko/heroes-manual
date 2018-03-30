//
//  GeneralMenu.swift
//  HeroesManual
//
//  Created by Colby Chance on 3/16/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class GeneralMenuController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func pushContentPage(page: Content_Page) {
        let contentPage = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ContentViewController") as! ContentViewController
        contentPage.contentPageStruct = page
        self.navigationController?.pushViewController(contentPage, animated: true)
    }
    
    func applyButtonStyle(btn: UIButton) {
        btn.layer.cornerRadius = 10
        btn.layer.borderColor = UIColor.lightGray.cgColor
        setButtonShadow(btn: btn, color: UIColor.lightGray.cgColor)
    }
    
    func setButtonShadow(btn: UIButton, color: CGColor) {
        btn.layer.shadowColor = color
        btn.layer.shadowOffset = CGSize(width: 0, height: 0)
        btn.layer.shadowOpacity = 1.0
    }
    
    func styleButtons(_ buttons: UIButton...) {
        for button in buttons {
            applyButtonStyle(btn: button)
        }
    }
    
    func saveUserWith(profession: USER_PROFESSION) {
        UserDefaults.standard.set(profession.rawValue, forKey: USER_METADATA.professionKey)
    }
}
