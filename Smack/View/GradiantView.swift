//
//  GradiantView.swift
//  Smack
//
//  Created by farnaz on 2019-09-21.
//  Copyright © 2019 farnaz. All rights reserved.
//

import UIKit

@IBDesignable
class GradiantView: UIView {

    @IBInspectable var topColor : UIColor = UIColor.blue {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    
    @IBInspectable var buttomColor : UIColor = UIColor.white {
        didSet{
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        let gradiantLayer = CAGradientLayer()
        gradiantLayer.colors = [topColor.cgColor, buttomColor.cgColor]
        gradiantLayer.startPoint = CGPoint(x: 0, y: 0)
        gradiantLayer.endPoint = CGPoint(x: 1, y: 1)
        gradiantLayer.frame = self.bounds
        self.layer.insertSublayer(gradiantLayer, at: 0)
    }

}
