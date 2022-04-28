//
//  HistoryViewController.swift
//  lifecounter
//
//  Created by Patrick Liu on 4/28/22.
//

import UIKit

class HistoryViewController: UIViewController {
    
    @IBOutlet weak var historyTableView : UITableView!
    var historyArray : [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        
        historyTableView.delegate = self
        historyTableView.dataSource = self

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension ViewController {
    func tableView(_ tableView: UITableView, didDeselectRowAt indexPath: IndexPath) {
        <#code#>
    }
}

extension ViewController {
    
}
