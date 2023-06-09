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
            sender.backgroundColor = UIColor.colorGreenBackground
        } else {
            sender.backgroundColor = UIColor.colorRedBackground
        }
        
        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.8, target: self, selector: #selector(configureQuestion), userInfo: nil, repeats: false)
        } else {
            goesToSummaryPage()
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configureQuestion()
    }
    
    func goesToSummaryPage() {
        performSegue(withIdentifier: "connectionToSummary", sender: nil)
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let summaryVC = segue.destination as? SummaryViewController
        else { return }
        summaryVC.points = points
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
