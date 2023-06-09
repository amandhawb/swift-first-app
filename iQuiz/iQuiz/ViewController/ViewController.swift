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
        print("Botton pressed!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureLayout()
    }
    
    func configureLayout() {
        buttonInicializeQuiz.layer.cornerRadius = 12.0
    }
    
}

