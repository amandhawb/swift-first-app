//
//  ViewController.swift
//  iQuiz
//
//  Created by Amandha W. Barok on 6/2/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buttonInicializeQuiz: UIButton!
    
    @IBAction func buttonPressed(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    func configureLayout() {
        navigationItem.hidesBackButton = true
        buttonInicializeQuiz.layer.cornerRadius = 12.0
    }
    
}

