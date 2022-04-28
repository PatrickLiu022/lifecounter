//
//  TableViewCell.swift
//  lifecounter
//
//  Created by Patrick Liu on 4/27/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet var playerLabel : UILabel!
    @IBOutlet weak var lifeLabel: UILabel!
    
    @IBOutlet weak var minusInput: UITextField!
    @IBOutlet weak var plusInput: UITextField!
    
    
    var lifeRemaining : Int = 20
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        lifeLabel.text = "\(lifeRemaining)"
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func minusButton(_ sender: Any) {
        let inputVal = Int(minusInput.text!)!
        lifeRemaining -= inputVal
        lifeLabel.text = "\(lifeRemaining)"
        
    }
    
    @IBAction func plusButton(_ sender: Any) {
        print("click plus button")
        let inputVal = Int(plusInput.text!)!
        lifeRemaining += inputVal
        lifeLabel.text = "\(lifeRemaining)"
    }
    
    @IBAction func disableWhenNegativeLife(_ sender: Any) {
        if (lifeRemaining <= 0) || (lifeRemaining - Int(minusInput.text!)! <= 0) {
            print("PLAYER LOST")
        }
    }
    
}
