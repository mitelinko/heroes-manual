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
    var contentPageStruct : Content_Page!
    
    // MARK: Properties
    
    
    @IBOutlet weak var contentTextView: UITextView!
    // MARK: Actions
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Stylize the navigation bar
        let navBar = self.navigationController?.navigationBar
        navBar?.prefersLargeTitles = true
        navBar?.barTintColor = SimbaPurple
        navBar?.tintColor = UIColor.white
        navBar?.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        self.navigationItem.title = "Communication Tips"
        self.navigationItem.largeTitleDisplayMode = .always
        
        
        
//        //Add content text
        if let contentPage = contentPageStruct {
            self.navigationItem.title = contentPage.title
            loadText(page: contentPage)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        if (self.isMovingFromParentViewController) {
            
            // Return navbar styling back to normal
            let navBar = self.navigationController?.navigationBar
            navBar?.prefersLargeTitles = false
            navBar?.barTintColor = UIColor.white
            navBar?.tintColor = SimbaGreen
            navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
            self.navigationItem.largeTitleDisplayMode = .never
        }
    }
    
    func loadText(page: Content_Page) {
        if let path = Bundle.main.path(forResource: page.fileName, ofType: "txt") {
            var data = ""
            do {
                data = try String(contentsOfFile: path, encoding: .utf8)
            } catch {
                print(error)
            }
            
            let textLines: [String] = data.components(separatedBy: .newlines)
            var contentText = ""
            for line in textLines {
                var spaceCount = 0
                while (spaceCount < line.count && line[line.index(line.startIndex, offsetBy: spaceCount)] == " ") {
                    spaceCount += 1
                }
                
                let indexRange = line.index(line.startIndex, offsetBy: spaceCount) ..< line.endIndex
                var contentLine : String = String(line[indexRange])
                var prefix = ""
                switch spaceCount {
                case 0:
                    prefix = ""
                case 4:
                    prefix = "  •"
                case 8:
                    prefix = "    -"
                default:
                    print("Possible format error with string: \(line)")
                }
                contentLine = "\(prefix) \(contentLine)\n"
                contentText += contentLine
            }
            self.contentTextView.text = contentText
        }
    }
}



