//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var FalseButton: UIButton!
    @IBOutlet weak var TrueButton: UIButton!
    
    let quiz = [
        "Four + Two is equal to Six",
        "Five + Three is greater then one",
        "Three + eight is less then ten"
    ]
    
    var NumberQuestion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        NumberQuestion += 1
        updateUI()
    }
    
    
    func updateUI() {
        questionLabel.text = quiz[NumberQuestion]
    }
    
    
}
