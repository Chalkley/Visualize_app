//
//  RoundCorners.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 27/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit


extension UIView {
    
    func roundCorners(_ corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        self.layer.mask = mask
    }
    
}
