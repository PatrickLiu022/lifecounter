//
//  HistoryViewController.swift
//  lifecounter
//
//  Created by Patrick Liu on 4/28/22.
//

import UIKit

class HistoryViewController: UIViewController {

    @IBOutlet weak var historyTableView: UITableView!
    var historyArray : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let historyTableCellNib = UINib(nibName: "HistoryTableViewCell", bundle: nil)
        historyTableView.register(historyTableCellNib, forCellReuseIdentifier: "HistoryTableViewCell")
        historyTableView.delegate = self
        historyTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    
}

extension HistoryViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        print("pass")
    }
}

extension HistoryViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historyArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = historyTableView.dequeueReusableCell(withIdentifier: "HistoryTableViewCell", for: indexPath) as! HistoryTableViewCell
         cell.historyLabel.text = historyArray[indexPath.row]
        return cell
    }
}
