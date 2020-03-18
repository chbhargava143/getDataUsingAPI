//
//  detailTableViewCell.swift
//  getDataUsingMVC
//
//  Created by chbn on 17/03/20.
//  Copyright © 2020 chbn. All rights reserved.
//

import UIKit

class detailTableViewCell: UITableViewCell {

    @IBOutlet weak var subTitleLbl: UILabel!
    @IBOutlet weak var titleLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
