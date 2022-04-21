//
//  ViewController.swift
//  lifecounter
//
//  Created by Patrick Liu on 4/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var playerOneLife: UILabel!
    var playerOneTotalLife = 20
    
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
}

