//
//  CollectionViewIsEmpty.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 02/11/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import Foundation
import UIKit

extension UICollectionView {
    
    func setEmptyMessage(_ message: String) {
        let messageLabel = UILabel(frame: CGRect(x: 0, y: 0, width: self.bounds.size.width, height: self.bounds.size.height))
        messageLabel.text = message
        messageLabel.textColor = .white
        messageLabel.numberOfLines = 0;
        messageLabel.textAlignment = .center;
        messageLabel.font = UIFont(name: "AvenirNext-Medium", size: 16)
        messageLabel.sizeToFit()
        
        self.backgroundView = messageLabel;
    }
    
    func restore() {
        self.backgroundView = nil
    }
}
