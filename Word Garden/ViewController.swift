//
//  ViewController.swift
//  Word Garden
//
//  Created by Anny Shan on 2/4/19.
//  Copyright © 2019 Jun Shan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var userGuessLabel: UILabel!
    @IBOutlet weak var guessedLetterField: UITextField!
    @IBOutlet weak var guessLetterButton: UIButton!
    @IBOutlet weak var guessCountLabel: UILabel!
    @IBOutlet weak var playAgainLabel: UIButton!
    @IBOutlet weak var flowerImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("In viewDidLoad, is guessedLetterField the first responder?",
            guessedLetterField.isFirstResponder)
    }
    
    func updateUIAfterGuess(){
        guessedLetterField.resignFirstResponder()
        guessedLetterField.text = ""
    }
    
    @IBAction func guessedLetterFieldChanged(_ sender: UITextField) {
        print("Hey! The guessedLetterFieldChanged!")
    }
    
    @IBAction func doneKeyPressed(_ sender: UITextField) {
        print("In doneKeyPressed, is guessedLetterField the first responder before updataUIAfterGuess?",
              guessedLetterField.isFirstResponder)
        updateUIAfterGuess()
        print("In doneKeyPressed, is guessedLetterField the first responder after updataUIAfterGuess?",
              guessedLetterField.isFirstResponder)
    }
    
    @IBAction func guessButtonPressed(_ sender: UIButton) {
        print("In guessButtonPressed, is guessedLetterField the first responder before updataUIAfterGuess?",
              guessedLetterField.isFirstResponder)
        updateUIAfterGuess()
        print("In guessButtonPressed, is guessedLetterField the first responder after updataUIAfterGuess?",
              guessedLetterField.isFirstResponder)
    }
    
    @IBAction func playAgainButtonPressed(_ sender: UIButton) {
        
    }

}

