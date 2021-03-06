//
//  PresentResultViewController.swift
//  Roshambo
//
//  Created by Martin Rist on 09/10/2017.
//  Copyright © 2017 Martin Rist. All rights reserved.
//

import UIKit

class PresentResultViewController: UIViewController {

    @IBOutlet weak var resultsImage: UIImageView!
    @IBOutlet weak var resultsLabel: UILabel!
    
    var playerChoice: Choice!
    
    func getComputerChoice() -> Choice {
        var computerChoices: [Choice] = [.rock, .paper, .scissors]
        let randomValue = arc4random_uniform(3)
        return computerChoices[Int(randomValue)]
    }

    @IBAction func playAgain(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        displayResult()
    }

    func displayResult() {
        if let playerChoice = playerChoice {
            let (image, text) = calculateResult(player: playerChoice, computer: getComputerChoice())
            resultsImage.image = UIImage(named: image)
            resultsLabel.text = text
        }
    }

    func calculateResult(player: Choice, computer: Choice) -> (String, String) {
        
        switch (player, computer) {
        case (.paper, .paper), (.rock, .rock), (.scissors, .scissors):
            return ("itsATie", "It's a tie!")
        case (.paper, .rock):
            return ("PaperCoversRock", "Paper covers Rock! You win!")
        case (.paper, .scissors):
            return ("ScissorsCutPaper", "Scissors cut Paper! You lose!")
        case (.rock, .paper):
            return ("PaperCoversRock", "Paper covers Rock! You lose!")
        case (.rock, .scissors):
            return ("RockCrushesScissors", "Rock crushes scissors! You win!")
        case (.scissors, .paper):
            return ("ScissorsCutPaper", "Scissors cut Paper! You win!")
        case (.scissors, .rock):
            return ("RockCrushesScissors", "Rock crushes scissors! You lose!")
        }
        
    }
    
}
