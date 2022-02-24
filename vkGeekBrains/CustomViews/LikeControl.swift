//
//  LikeControl.swift
//  vkGeekBrains
//
//  Created by Prosvetova Lina on 21.02.2022.
//

import UIKit

class LikeControl: UIView {

    
//    private var containerView: UIView!
//    private var likeButton: UIButton!
//    private var likeCountLabel: UILabel!
//
    private func setupView() {
        
        //containerView = UIView(frame: CGRect(x: 0, y: 0, width: 60, height: 40))
//        containerView = UIView()
//        self.addSubview(containerView)
//        likeButton = UIButton(type: .system)
//        likeButton.setImage(UIImage(named: "cat"), for: .normal)
//        //likeButton.imageView?.image = UIImage(named: "cat")
//        containerView.addSubview(likeButton)
//
//        likeCountLabel = UILabel()
//        likeCountLabel.text = "5"
//        containerView.addSubview(likeCountLabel)
//
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setupView()
    }
    
    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.setupView()
    }

   
    @IBAction func likeButtonTapped(_ sender: Any) {
        print("Button Tapped")
    }
    
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        likeButton.frame = bounds
//    }

}
