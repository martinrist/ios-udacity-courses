//
//  PickMoveViewController.swift
//  Roshambo
//
//  Created by Martin Rist on 09/10/2017.
//  Copyright © 2017 Martin Rist. All rights reserved.
//

import UIKit

class PickMoveViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
}

    @IBAction func pickPaper(_ sender: Any) {
        performSegue(withIdentifier: "pickPaper", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let id = segue.identifier {
            switch id {
                case "pickPaper":
                    let resultVC = segue.destination as! PresentResultViewController
                    resultVC.playerChoice = .paper
                case "pickScissors":
                    let resultVC = segue.destination as! PresentResultViewController
                    resultVC.playerChoice = .scissors
            default:
                print("Unknown segue identifier found")
            }
        }
    }

    @IBAction func pickRock(_ sender: Any) {
        let resultVC = storyboard?.instantiateViewController(withIdentifier: "PresentResultViewController") as! PresentResultViewController
        
        resultVC.playerChoice = .rock
        present(resultVC, animated: true, completion: nil)
    }

    @IBAction func pickScissors(_ sender: Any) {
        // No code required here
    }
}

