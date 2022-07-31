//
//  GreenTableViewCell.swift
//  CV_TableView
//
//  Created by Julia Semyzhenko on 7/30/22.
//

import UIKit

class GreenTableViewCell: UITableViewCell {
    
    @IBOutlet weak var yearsLabel: UILabel!
    @IBOutlet weak var companyNameLabel: UILabel!
    @IBOutlet weak var positionLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
