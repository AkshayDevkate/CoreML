//
//  OneTableViewCell.swift
//  Final
//
//  Created by Akshay Devkate on 07/04/21.
//  Copyright © 2021 Akshay Devkate. All rights reserved.
//

import UIKit

class OneTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var lbl = UILabel!
    
    @IBOutlet weak var lbl2 = UILabel!
    
    @IBOutlet weak var image = UIImage!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
