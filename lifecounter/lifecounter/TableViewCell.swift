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
    
    @IBOutlet weak var minusTextInput: UITextField!
    @IBOutlet weak var plusTextInput: UITextField!
    
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
    
    @IBAction func minusAmountFromLife(_ sender: Any) {
        let amountToSubtract = Int(minusTextInput.text!)!
        lifeLabel.text = "\(lifeRemaining - amountToSubtract)"
        lifeRemaining -= amountToSubtract
    }
    
    @IBAction func plusAmountFromLife(_ sender: Any) {
        let amountToAdd = Int(plusTextInput.text!)!
        lifeLabel.text = "\(lifeRemaining + amountToAdd)"
        lifeRemaining += amountToAdd
    }
    
}
