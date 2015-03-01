//
//  CustomSubtitleTableViewCell.swift
//  ResponsiveDemos
//
//  Created by Brad Broulik on 11/16/14.
//  Copyright (c) 2014 Brad Broulik. All rights reserved.
//

import UIKit

class CustomSubtitleTableViewCell: UITableViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var detailLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
