//
//  SummaryViewController.swift
//  iQuiz
//
//  Created by Amandha W. Barok on 6/7/23.
//

import UIKit

class SummaryViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!

    @IBOutlet weak var percentageLabel: UILabel!
    
    @IBOutlet weak var buttonRestart: UIButton!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    var points: Int?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
        configureSummary()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
        buttonRestart.layer.cornerRadius = 12.0
    }
    
    func configureSummary() {
        guard let points = points else { return }
        resultLabel.text = "You got \(points) of \(questions.count) questions right."
        
        let percentage = (points * 100) / questions.count
        percentageLabel.text = "Final percentage: \(percentage)%"
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
