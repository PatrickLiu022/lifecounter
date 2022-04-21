//
//  ViewController.swift
//  lifecounter
//
//  Created by Patrick Liu on 4/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOneLife: UILabel!
    @IBOutlet weak var playerTwoLife: UILabel!
    @IBOutlet weak var playerXLost: UILabel!
    @IBOutlet weak var resetGameButton: UIButton!
    
    var playerOneTotalLife = 20
    var playerTwoTotalLife = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        playerXLost.isHidden = true
        resetGameButton.isHidden = true
    }


    @IBAction func playerOneMinusOne(_ sender: Any) {
        playerOneTotalLife = playerOneTotalLife - 1
        checkPlayerStillHasLife(playerOneTotalLife, "1")
        playerOneLife.text = "\(playerOneTotalLife)"
    }
    
    @IBAction func playerOnePlusOne(_ sender: Any) {
        playerOneTotalLife = playerOneTotalLife + 1
        playerOneLife.text = "\(playerOneTotalLife)"
    }
    
    @IBAction func playerOneMinusFive(_ sender: Any) {
        playerOneTotalLife = playerOneTotalLife - 5
        checkPlayerStillHasLife(playerOneTotalLife, "1")
        playerOneLife.text = "\(playerOneTotalLife)"
    }
    
    @IBAction func playerOnePlusFive(_ sender: Any) {
        playerOneTotalLife = playerOneTotalLife + 5
        playerOneLife.text = "\(playerOneTotalLife)"
    }
    
    @IBAction func playerTwoMinusOne(_ sender: Any) {
        playerTwoTotalLife = playerTwoTotalLife - 1
        checkPlayerStillHasLife(playerTwoTotalLife, "2")
        playerTwoLife.text = "\(playerTwoTotalLife)"
    }
    
    @IBAction func playerTwoPlusOne(_ sender: Any) {
        playerTwoTotalLife = playerTwoTotalLife + 1
        playerTwoLife.text = "\(playerTwoTotalLife)"
    }
    
    @IBAction func playerTwoMinusFive(_ sender: Any) {
        playerTwoTotalLife = playerTwoTotalLife - 5
        checkPlayerStillHasLife(playerTwoTotalLife, "2")
        playerTwoLife.text = "\(playerTwoTotalLife)"
    }
    
    @IBAction func playerTwoPlusFive(_ sender: Any) {
        playerTwoTotalLife = playerTwoTotalLife + 5
        playerTwoLife.text = "\(playerTwoTotalLife)"
    }
    
    
    @IBAction func resetGame(_ sender: Any) {
        playerXLost.isHidden = true
        resetGameButton.isHidden = true
        playerTwoLife.text = "20"
        playerTwoTotalLife = 20
        playerOneLife.text = "20"
        playerOneTotalLife = 20
    }
    
    func checkPlayerStillHasLife(_ lifeNumber : Int, _ player: String) {
        if (lifeNumber <= 0) {
            playerXLost.isHidden = false
            resetGameButton.isHidden = false
            playerXLost.text = "Player \(player) LOSES!"
        }
    }
    
}

