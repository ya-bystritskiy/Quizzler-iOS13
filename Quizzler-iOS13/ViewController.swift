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
        ["Four + Two is equal to Six" , "true" ],
       ["Five + Three is greater then one" , "true"],
        ["Three + eight is less then ten" , "false"]
    ]
    
    var NumberQuestion = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quiz[NumberQuestion][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        
        if NumberQuestion + 1 < quiz.count {
            NumberQuestion += 1
        } else {
            NumberQuestion = 0 
        }
        updateUI()
    }
    
    
    func updateUI() {
        questionLabel.text = quiz[NumberQuestion][0]
      
    
    }
    
    
}
