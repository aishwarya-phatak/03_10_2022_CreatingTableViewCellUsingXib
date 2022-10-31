//
//  StudentTableViewCell.swift
//  CreatingTableViewCellUsingXib
//
//  Created by Vishal Jagtap on 31/10/22.
//

import UIKit

class StudentTableViewCell: UITableViewCell {
    
    @IBOutlet weak var studentRollNumber: UILabel!
    @IBOutlet weak var studentName: UILabel!
    @IBOutlet weak var studentCity: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
