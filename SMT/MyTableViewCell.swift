//
//  MyTableViewCell.swift
//  SMT
//
//  Created by DaliaDiab on 3/19/19.
//  Copyright © 2019 DaliaDiab. All rights reserved.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var menuLbl: UILabel!
    
    @IBOutlet weak var icon: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
