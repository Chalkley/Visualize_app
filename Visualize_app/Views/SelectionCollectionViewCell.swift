//
//  SelectionCollectionViewCell.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 15/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit

class SelectionCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var selectionImage: UIImageView!
    @IBOutlet weak var selectionLabel: UILabel!
    @IBOutlet weak var blurView: UIVisualEffectView!
    

    override func awakeFromNib() {
    super.awakeFromNib()
    selectionImage.clipsToBounds = true
    selectionLabel.adjustsFontSizeToFitWidth = true
    selectionImage.backgroundColor = .clear
    selectionImage.alpha = 0.8
    
}
    
    func updateViews(selection: Selection) {
        //Image
        selectionImage.alpha = 0.8
        selectionImage.image = UIImage(named: selection.selecionImage!)
        selectionImage.contentMode = .scaleAspectFill
        selectionImage.layer.cornerRadius = 10
        selectionImage.clipsToBounds = true
        //Label
        selectionLabel.text = selection.selectionTitle
        selectionLabel.font = UIFont(name: "AvenirNext-Medium", size: 22)
        selectionLabel.adjustsFontSizeToFitWidth = true
        selectionLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        selectionLabel.numberOfLines = 2
        //Blur
        blurView.alpha = 0.75
        blurView.clipsToBounds = true
        blurView.roundCorners([.bottomLeft, .bottomRight], radius: 10)
        
        
        
    }
    
}
