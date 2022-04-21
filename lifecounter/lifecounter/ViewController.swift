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
    
    var playerOneTotalLife = 20
    var playerTwoTotalLife = 20
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func playerOneMinusOne(_ sender: Any) {
        playerOneTotalLife = playerOneTotalLife - 1
        playerOneLife.text = "\(playerOneTotalLife)"
    }
    
    @IBAction func playerOnePlusOne(_ sender: Any) {
        playerOneTotalLife = playerOneTotalLife + 1
        playerOneLife.text = "\(playerOneTotalLife)"
    }
    
    @IBAction func playerOneMinusFive(_ sender: Any) {
        playerOneTotalLife = playerOneTotalLife - 5
        playerOneLife.text = "\(playerOneTotalLife)"
    }
    
    @IBAction func playerOnePlusFive(_ sender: Any) {
        playerOneTotalLife = playerOneTotalLife + 5
        playerOneLife.text = "\(playerOneTotalLife)"
    }
    
    @IBAction func playerTwoMinusOne(_ sender: Any) {
        playerTwoTotalLife = playerTwoTotalLife - 1
        playerTwoLife.text = "\(playerTwoTotalLife)"
    }
    
    @IBAction func playerTwoPlusOne(_ sender: Any) {
        playerTwoTotalLife = playerTwoTotalLife + 1
        playerTwoLife.text = "\(playerTwoTotalLife)"
    }
    
    @IBAction func playerTwoMinusFive(_ sender: Any) {
        playerTwoTotalLife = playerTwoTotalLife - 5
        playerTwoLife.text = "\(playerTwoTotalLife)"
    }
    
    @IBAction func playerTwoPlusFive(_ sender: Any) {
        playerTwoTotalLife = playerTwoTotalLife + 5
        playerTwoLife.text = "\(playerTwoTotalLife)"
    }
    
}

