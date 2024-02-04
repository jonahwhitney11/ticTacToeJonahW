//
//  ViewController.swift
//  ticTacToeJonahW
//
//  Created by Jonah Whitney on 1/29/24.
//

import UIKit

class ViewController: UIViewController {

    enum Turn {
        case x
        case o
    }
    
    // determine first turn
    var firstTurn = Turn.x
    // determine whos turn it is
    var currentTurn = Turn.x
    
    // variables for x / o characters
    var X = "X"
    var O = "O"
    
    @IBOutlet weak var turnLabel: UILabel!
    @IBOutlet weak var a1: UIButton!
    @IBOutlet weak var a2: UIButton!
    @IBOutlet weak var a3: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var c1: UIButton!
    @IBOutlet weak var c2: UIButton!
    @IBOutlet weak var c3: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonTapped(_ sender: UIButton) {
        addToBoard(sender)
    }
    
    func addToBoard(_ sender: UIButton) {
        // if there is nothing in the button's title
        if(sender.title(for: .normal) == nil) {
            // if the current turn is o
            if(currentTurn == Turn.o) {
                // set title to 0 for normal state, set current turn to x, update turnLabel text
                sender.setTitle(O, for: .normal)
                currentTurn = Turn.x
                turnLabel.text = X
            }
            // if the current turn is x
            else if(currentTurn == Turn.x) {
                // set title to x for normal state, set current turn to o, update turnLabel text
                sender.setTitle(X, for: .normal)
                currentTurn = Turn.o
                turnLabel.text = O
            }
        }
    }
    
}

