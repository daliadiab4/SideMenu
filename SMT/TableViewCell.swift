//
//  TableViewCell.swift
//  SMT
//
//  Created by admin on 3/19/19.
//  Copyright © 2019 DaliaDiab. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var Icon: UIImageView!
    @IBOutlet weak var MenuLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
