//
//  ContentViewController.swift
//  HeroesManual
//
//  Created by Tucker on 3/9/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class ContentViewController: UIViewController {
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
        navBar?.barTintColor = SIMBA_UI_COLORS.purple
        navBar?.tintColor = UIColor.white
        navBar?.largeTitleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        navBar?.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]
        self.navigationItem.title = "Communication Tips"
        self.navigationItem.largeTitleDisplayMode = .always
        
        
        
        //Add content text
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
            navBar?.tintColor = SIMBA_UI_COLORS.green
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
            let contentText = NSMutableAttributedString(string: "")
            for line in textLines {
                var spaceCount = 0
                while (spaceCount < line.count && line[line.index(line.startIndex, offsetBy: spaceCount)] == " ") {
                    spaceCount += 1
                }
                
                let indexRange = line.index(line.startIndex, offsetBy: spaceCount) ..< line.endIndex
                var contentLine : String = String(line[indexRange])
                let prefix = NSMutableAttributedString()
                switch spaceCount {
                case 0:
                    prefix.append(NSMutableAttributedString(string: "\n"))
                case 4:
                    prefix.append(NSMutableAttributedString(string: "\(SIMBA_PARAGRAPH_STYLES.point.symbol) ", attributes: SIMBA_TEXT_STYLES.bullet))
                case 8:
                    prefix.append(NSMutableAttributedString(string: "\(SIMBA_PARAGRAPH_STYLES.subpoint.symbol) ", attributes: SIMBA_TEXT_STYLES.bullet))
                default:
                    print("Possible format error with string: \(line)")
                }
                
                contentLine = "\(contentLine)\n"
                if spaceCount == 0 {
                    prefix.append(NSMutableAttributedString(string: contentLine, attributes: SIMBA_TEXT_STYLES.heading))
                } else {
                    prefix.append(NSMutableAttributedString(string: contentLine, attributes: SIMBA_TEXT_STYLES.content))
                }
                setParagraphStyle(line: prefix)
                contentText.append(prefix)
            }
            self.contentTextView.attributedText = contentText
        }
    }
    
    func setParagraphStyle(line: NSMutableAttributedString) {

        let firstChar = line.string[line.string.index(line.string.startIndex, offsetBy: 0)]
        let chosenStyle = NSMutableParagraphStyle()
        chosenStyle.alignment = .left
        
        switch firstChar {
        case SIMBA_PARAGRAPH_STYLES.point.symbol:
            chosenStyle.firstLineHeadIndent = SIMBA_PARAGRAPH_STYLES.point.firstLineHeadIndent
            chosenStyle.headIndent = SIMBA_PARAGRAPH_STYLES.point.headIndent
        case SIMBA_PARAGRAPH_STYLES.subpoint.symbol:
            chosenStyle.firstLineHeadIndent = SIMBA_PARAGRAPH_STYLES.subpoint.firstLineHeadIndent
            chosenStyle.headIndent = SIMBA_PARAGRAPH_STYLES.subpoint.headIndent
        default:
            _ = 4
        }
        line.addAttribute(NSAttributedStringKey.paragraphStyle, value: chosenStyle, range: NSMakeRange(0, line.length))
    }
}



