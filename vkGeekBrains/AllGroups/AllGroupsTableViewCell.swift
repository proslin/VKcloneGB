//
//  AllGroupsTableViewCell.swift
//  vkGeekBrains
//
//  Created by Vitaly Prosvetov on 15.02.2022.
//

import UIKit

class AllGroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var allGroupName: UILabel!
    @IBOutlet weak var allGroupImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
