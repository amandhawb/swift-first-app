//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by Amandha W. Barok on 6/5/23.
//

import UIKit

class QuestionViewController: UIViewController {

    var points = 0
    var questionNumber = 0
    
    @IBOutlet weak var questionTitleLabel: UILabel!
    @IBOutlet var responseButtonList: [UIButton]!
    
    @IBAction func responseButtonPressed(_ sender: UIButton) {
        let userGotRight = questions[questionNumber].correctResponse == sender.tag
        
        if userGotRight {
            points += 1
            sender.backgroundColor = UIColor(red: 11/225, green: 161/255, blue: 53/255, alpha: 1.0)
        } else {
            sender.backgroundColor = UIColor(red: 211/225, green: 17/255, blue: 17/255, alpha: 1.0)

        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(configureQuestion), userInfo: nil, repeats: false)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configureQuestion()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center
        for button in responseButtonList {
            button.layer.cornerRadius = 12.0
        }
    }
    
    @objc func configureQuestion() {
        questionTitleLabel.text = questions[questionNumber].title
        
        for button in responseButtonList {
            let buttonTitle = questions[questionNumber].responses[button.tag]
            
            button.setTitle(buttonTitle, for: .normal)
            button.backgroundColor = UIColor(red: 116/255, green: 50/255, blue: 255/255, alpha: 1.0)
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
