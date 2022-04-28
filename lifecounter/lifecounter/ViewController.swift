//
//  ViewController.swift
//  lifecounter
//
//  Created by Patrick Liu on 4/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var playersInGame = [
        "Player 1",
        "Player 2",
        "Player 3",
        "Player 4"
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let tableViewCellNib = UINib(nibName: "TableViewCell", bundle: nil)
        tableView.register(tableViewCellNib, forCellReuseIdentifier: "TableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    @IBAction func removePlayer(_ sender: Any) {
        if playersInGame.count <= 2 {
            print("Too little players")
        } else {
            playersInGame.removeLast()
            print("Player \(playersInGame.count)")
            tableView.reloadData()
            
        }
    }
    
    @IBAction func addPlayer(_ sender: Any) {
        if playersInGame.count > 8 {
            print("Too many players")
        } else {
            playersInGame.append("Player \(playersInGame.count)")
            tableView.reloadData()
        }
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped \(indexPath.row)")
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playersInGame.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.playerLabel.text = playersInGame[indexPath.row]
        return cell
    }
}


