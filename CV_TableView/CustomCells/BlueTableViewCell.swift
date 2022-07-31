//
//  BlueTableViewCell.swift
//  CV_TableView
//
//  Created by Julia Semyzhenko on 7/30/22.
//

import UIKit

class BlueTableViewCell: UITableViewCell {
    @IBOutlet weak var blueCellImage: UIImageView!
    @IBOutlet weak var jobExperienceLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
    
}
