//
//  AvatarView.swift
//  vkGeekBrains
//
//  Created by Prosvetova Lina on 18.02.2022.
//

import UIKit

@IBDesignable class AvatarView: UIView {

   
    var imageView: UIImageView!
    private var shadowView: UIView!
    
    @IBInspectable var shadow: CGFloat = 5 {
       didSet {
            self.updateShadowRadius()
        }
    }
    
    @IBInspectable var color: UIColor = UIColor.darkGray {
        didSet {
            self.updateShadowColor()
        }
    }
    
    private func setupView() {

        shadowView = UIView(frame: CGRect(x: 0, y: 0, width: 80, height: 80))
        let cornerRadius = shadowView.frame.height/2
        self.addSubview(shadowView)
        //testView.layer.borderWidth = 2
        //testView.layer.borderColor = UIColor.red.cgColor
        shadowView.layer.cornerRadius = shadowView.frame.height/2
        shadowView.layer.shadowColor = color.cgColor
        shadowView.layer.shadowOpacity = 1
        shadowView.layer.shadowRadius = shadow
        shadowView.layer.shadowPath = UIBezierPath(roundedRect: shadowView.bounds, cornerRadius: cornerRadius).cgPath
        
        imageView = UIImageView(frame: shadowView.bounds)
      //  imageView.frame = CGRect()
        let image = UIImage(named: "cat")
        imageView.image = image
        shadowView.addSubview(imageView)
        
        imageView.layer.cornerRadius = imageView.frame.height/2
       imageView.clipsToBounds = true
        
    }
        
        func updateShadowRadius() {
            self.shadowView.layer.shadowRadius = shadow
        }
    
    func updateShadowColor() {
        self.shadowView.layer.shadowColor = color.cgColor
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

