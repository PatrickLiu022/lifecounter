//
//  ViewController.swift
//  lifecounter
//
//  Created by Patrick Liu on 4/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let defaultPlayersWhenGameStarts = [
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
    
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("you tapped \(indexPath.row)")
    }
}
extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return defaultPlayersWhenGameStarts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TableViewCell
        cell.textLabel?.text = defaultPlayersWhenGameStarts[indexPath.row]
        return cell
    }
}


