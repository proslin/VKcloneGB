//
//  GroupsTableViewCell.swift
//  vkGeekBrains
//
//  Created by Vitaly Prosvetov on 15.02.2022.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {

    @IBOutlet weak var groupImage: UIImageView!
    
    @IBOutlet weak var groupName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
