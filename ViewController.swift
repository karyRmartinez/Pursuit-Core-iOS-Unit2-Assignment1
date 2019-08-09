//
//  ViewController.swift
//  TicTacToe
//
//  Created by Alex Paul on 11/8/18.
//  Copyright © 2018 Pursuit. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    
    var model = TicTacToeBrain() //This is an instance of the class
    var player = Player.player1 //When an O is placed, this variable instance becomes Player.player2. When an X is placed after, this variable instance becomes Player.player1.
    //What we want to do is ALWAYS have player1 starting when we press new game.
    
    @IBOutlet var allButtons: [GameButton]!
    
    @IBAction func newGameButton(_ sender: UIButton) {
     reset()
        model.resetBoard() // this is a fuction inside tictactoebrain (ie: "model")
    player = Player.player1 //unlike the ^ this is not a fuction. this is an instance of an enum Player.
       
    
}
    
    @IBAction func buttonPressed(_ sender: GameButton) {
        model.updateGameBoard(player: player, row: sender.row, col: sender.col)
        let result = model.checkGameState()
        switch result {
        case .player1wins:
            updateButtons(row: sender.row, col: sender.col, player: player)
            self.resultLabel.text = "player 1 wins!!"
            for button in allButtons{
                button.isEnabled = false
            }
        case .player2wins :
            updateButtons(row: sender.row, col: sender.col, player: player)
           self.resultLabel.text = "player 2 wins"
            for button in allButtons {
                button.isEnabled = false
            }
        case .ongoing:
            updateButtons(row: sender.row, col: sender.col, player: player)
            player.alternate()
        case .tie:
            self.resultLabel.text = "Looks like a Tie!"
        }
    }
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func updateButtons(row: Int, col: Int, player: Player) {
        for button in allButtons {
            if button.row == row && button.col == col {
                switch player {
                case .player1:
                    button.setTitle("O", for: .normal)
                    button.isEnabled = false
                case .player2:
                    button.setTitle("X", for: .normal)
                    button.isEnabled = false
                }
            }
        }
    }

    func reset() {
        for button in allButtons {
            button.setTitle("", for: .normal)
            button.isEnabled = true
        }
    }
    
}



