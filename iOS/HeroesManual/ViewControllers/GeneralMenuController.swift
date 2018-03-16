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

}
