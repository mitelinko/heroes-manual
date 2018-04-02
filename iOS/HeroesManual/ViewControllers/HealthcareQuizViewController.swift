//
//  HealthcareQuizViewController.swift
//  HeroesManual
//
//  Created by Tucker on 4/1/18.
//  Copyright © 2018 Team Simba. All rights reserved.
//

import UIKit

class HealthcareQuizViewController: GeneralMenuController {
    
    var currentQuestion = 0
    let quizItems = QuizItems().items
    var optionsButtons: [UIButton] = [UIButton]()

    // MARK: Properties
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var optionsStackView: UIStackView!
    @IBOutlet weak var option0Button: UIButton!
    @IBOutlet weak var option1Button: UIButton!
    @IBOutlet weak var option2Button: UIButton!
    @IBOutlet weak var option3Button: UIButton!
    @IBOutlet weak var option4Button: UIButton!
    @IBOutlet weak var popUpXConstraint: NSLayoutConstraint!
    @IBOutlet weak var correctLabel: UILabel!
    @IBOutlet weak var detailsLabel: UILabel!
    @IBOutlet weak var popUpBackgroundImage: UIImageView!
    @IBOutlet weak var popUpView: UIView!
    @IBOutlet var parentView: UIView!
    @IBOutlet weak var whiteBackgroundImage: UIImageView!
    
    
    // MARK: Actions
    @IBAction func option0Pressed(_ sender: UIButton) {
        showResultPopUp(answer: 0)
    }
    @IBAction func option1Pressed(_ sender: UIButton) {
        showResultPopUp(answer: 1)
    }
    @IBAction func option2Pressed(_ sender: UIButton) {
        showResultPopUp(answer: 2)
    }
    @IBAction func option3Pressed(_ sender: UIButton) {
        showResultPopUp(answer: 3)
    }
    @IBAction func option4Pressed(_ sender: UIButton) {
        showResultPopUp(answer: 4)
    }
    @IBAction func nextButtonPressed(_ sender: UIButton) {
        currentQuestion += 1
        whiteBackgroundImage.alpha = 0.0
        questionLabel.alpha = 1.0
        displayQuestion(questionNumber: currentQuestion, optionsButtons: optionsButtons)
        popUpXConstraint.constant = 500
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        popUpBackgroundImage.layer.cornerRadius = 10
        popUpBackgroundImage.layer.borderColor = UIColor.lightGray.cgColor
        popUpBackgroundImage.layer.shadowColor = UIColor.lightGray.cgColor
        popUpBackgroundImage.layer.shadowOffset = CGSize(width: 0, height: 0)
        popUpBackgroundImage.layer.shadowOpacity = 1.0
        whiteBackgroundImage.alpha = 0.0
        
        optionsButtons = [option0Button, option1Button, option2Button, option3Button, option4Button]
        for button in optionsButtons {
            styleButtons(button)
        }
        displayQuestion(questionNumber: currentQuestion, optionsButtons: optionsButtons)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    func showResultPopUp(answer: Int) {
        if (quizItems[currentQuestion].answer == answer)  {
            correctLabel.text = "Correct"
            correctLabel.textColor = SIMBA_UI_COLORS.green
            detailsLabel.text = quizItems[currentQuestion].details
        } else {
            correctLabel.text = "Incorrect"
            correctLabel.textColor = UIColor.red
            detailsLabel.text = "Better luck next time!"
        }
        parentView.bringSubview(toFront: popUpView)
        whiteBackgroundImage.alpha = 0.65
        questionLabel.alpha = 0.35
        popUpXConstraint.constant = 0
        UIView.animate(withDuration: 0.3, animations: {
            self.view.layoutIfNeeded()
        })
    }
    
    func displayQuestion(questionNumber: Int, optionsButtons: [UIButton]) {
        
        // Question
        questionLabel.text = quizItems[currentQuestion].question
        self.view.addSubview(questionLabel)
        
        var i = 0
        for button in optionsButtons {
            let options = quizItems[currentQuestion].options
            if (i < options.count) {
                button.setTitle(quizItems[currentQuestion].options[i], for: .normal)
                button.titleLabel?.textAlignment = NSTextAlignment.center
            } else {
                optionsButtons[i].removeFromSuperview()
            }
            i += 1
        }
    }
    
}
