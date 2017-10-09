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
    
    var playerChoice: String?
    
    func getComputerChoice() -> String {
        var computerChoices = ["rock", "paper", "scissors"]
        let randomValue = arc4random() % 3
        return computerChoices[Int(randomValue)]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        if let playerChoice = playerChoice {
            let (image, text) = calculateResult(player: playerChoice, computer: getComputerChoice())
            resultsImage.image = UIImage(named: image)
            resultsLabel.text = text
        } else {
            print("No choice made")
        }
    }

    func calculateResult(player: String, computer: String) -> (String, String) {
        
        let draw = ("itsATie", "It's a tie!")
        
        switch (player, computer) {
        case ("paper", "paper"):
            return draw
        case ("paper", "rock"):
            return ("PaperCoversRock", "Paper covers Rock! You win!")
        case ("paper", "scissors"):
            return ("ScissorsCutPaper", "Scissors cut Paper! You lose!")
        case ("rock", "paper"):
            return ("PaperCoversRock", "Paper covers Rock! You lose!")
        case ("rock", "rock"):
            return draw
        case ("rock", "scissors"):
            return ("RockCrushesScissors", "Rock crushes scissors! You win!")
        case ("scissors", "paper"):
            return ("ScissorsCutPaper", "Scissors cut Paper! You win!")
        case ("scissors", "rock"):
            return ("RockCrushesScissors", "Rock crushes scissors! You lose!")
        case ("scissors", "scissors"):
            return draw
        default:
            return ("", "No idea what's gone on here...")
        }
        
    }
    
}
