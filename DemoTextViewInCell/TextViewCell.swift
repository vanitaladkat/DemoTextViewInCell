//
//  TextViewCell.swift
//  DemoTextViewInCell
//
//  Created by admin on 15/03/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class TextViewCell: UITableViewCell {
    @IBOutlet weak var customTextView: UITextView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
