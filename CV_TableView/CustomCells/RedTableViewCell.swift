//
//  RedTableViewCell.swift
//  CV_TableView
//
//  Created by Julia Semyzhenko on 7/30/22.
//

import UIKit

class RedTableViewCell: UITableViewCell {

    @IBOutlet weak var topImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
