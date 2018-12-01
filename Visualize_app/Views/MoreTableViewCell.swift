//
//  MoreTableViewCell.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 28/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit

class MoreTableViewCell: UITableViewCell {
    
    @IBOutlet weak var moreImageIcon: UIImageView!
    @IBOutlet weak var moreLabelTitle: UILabel!
    @IBOutlet weak var moreNextPageImage: UIImageView!
    
    func updateViews(more: More) {
        moreImageIcon.image = UIImage(named: more.moreImage!)
        moreLabelTitle.text = more.moreTitle
        moreNextPageImage.image = UIImage(named: more.moreNextImage!)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        //Image icon
        moreImageIcon.clipsToBounds = true
        //Label
        moreLabelTitle.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        moreLabelTitle.font = UIFont(name: "AvenirNext-Medium", size: 19)
        moreLabelTitle.adjustsFontSizeToFitWidth = true
        //Next icon
        moreNextPageImage.clipsToBounds = true
        
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
