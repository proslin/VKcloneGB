//
//  PhotosCollectionViewCell.swift
//  vkGeekBrains
//
//  Created by Prosvetova Lina on 16.02.2022.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    var likeCount = 0
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var photo: UIImageView!
    
    
    @IBAction func ButtonTapped(_ sender: UIButton) {
        print("Button tapped")
        likeLabel.text = "\( likeCount + 1)"
        likeButton.tintColor = .green
        likeLabel.tintColor = .green
    }
    
}
