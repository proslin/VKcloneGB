//
//  AvatarView.swift
//  vkGeekBrains
//
//  Created by Prosvetova Lina on 18.02.2022.
//

import UIKit

class AvatarView: UIView {

   
    private var imageView: UIImageView!
    
    private func setupView() {
        self.backgroundColor = .red
        imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: 50, height: 40)
        imageView.image = UIImage(named: "cat")
        self.addSubview(imageView)
        
        imageView.layer.cornerRadius = 20
        imageView.clipsToBounds = true
        
        imageView.layer.shadowColor = UIColor.black.cgColor
        imageView.layer.shadowOpacity = 0.5
        imageView.layer.shadowRadius = 8
        imageView.layer.shadowOffset = CGSize.zero
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupView()
    }
    
}

