//
//  File.swift
//  vkGeekBrains
//
//  Created by Vitaly Prosvetov on 14.02.2022.
//

import Foundation
import UIKit

extension UITextField {
    func addPaddingToTextField() {
        let paddingView: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 8, height: 20))
    
   // let paddingView: UIView = UIView(frame: CGRect(x: 0, y: 0, width: 5, height: 20))
        self.leftView = paddingView;
       self.leftViewMode = .always;
//        self.rightView = paddingView;
//        self.rightViewMode = .always;

    
       // self.backgroundColor = UIColor.whiteColor()
       // self.textColor = UIColor.blackColor()
    }


}
