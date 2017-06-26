//
//  ChatCell.swift
//  parseChat
//
//  Created by Rey Oliva on 6/26/17.
//  Copyright © 2017 Rey Oliva. All rights reserved.
//

import UIKit

class ChatCell: UITableViewCell {

    @IBOutlet weak var message: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
