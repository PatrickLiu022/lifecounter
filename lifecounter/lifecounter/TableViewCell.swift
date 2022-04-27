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
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
