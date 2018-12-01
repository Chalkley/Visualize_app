//
//  FavouritesCollectionViewCell.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 29/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit
import WebKit

protocol FavouriteCellDelegate: class {
    func delete(cell: FavouritesCollectionViewCell)
}

class FavouritesCollectionViewCell: UICollectionViewCell, WKUIDelegate, WKNavigationDelegate {
    
    @IBOutlet weak var favouritesWebView: WKWebView!
    @IBOutlet weak var deleteButtonBackgroundView: UIVisualEffectView!
    
    weak var delegate: FavouriteCellDelegate?
    
    override func awakeFromNib() {
    super.awakeFromNib()
    
    favouritesWebView.uiDelegate = self
    favouritesWebView.configuration.allowsInlineMediaPlayback = true
    favouritesWebView.navigationDelegate = self
    favouritesWebView.contentMode = .scaleAspectFill
    favouritesWebView.clipsToBounds = true
    favouritesWebView.backgroundColor = .clear
    favouritesWebView.isOpaque = false
        
    deleteButtonBackgroundView.layer.cornerRadius = deleteButtonBackgroundView.bounds.width / 2.0
    deleteButtonBackgroundView.layer.masksToBounds = true
    deleteButtonBackgroundView.isHidden = !isEditing
}
    
    var isEditing: Bool = false {
        didSet {
            deleteButtonBackgroundView.isHidden = !isEditing
        }
    }
    
    @IBAction func deleteButtonDidTap(_ sender: Any) {
        delegate?.delete(cell: self)
        print("Delete button tapped")
    }
    
}



