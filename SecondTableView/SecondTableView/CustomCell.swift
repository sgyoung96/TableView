//
//  CustomCell.swift
//  SecondTableView
//
//  Created by Gayeong on 2021/05/01.
//

import UIKit

class CustomCell: UITableViewCell {
    
    @IBOutlet var lblSeq: UILabel!
    @IBOutlet var lblText: UILabel!
    @IBOutlet var lblTime: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
