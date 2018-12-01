//
//  AboutViewController.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 01/11/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit

class AboutViewController: UIViewController {
    
    @IBOutlet weak var aboutLabel: UILabel!
    @IBOutlet weak var aboutTextView: UITextView!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var blurView: UIVisualEffectView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
      
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false
    }
    

    func setupUI() {
        //Label
        aboutLabel.text = "About"
        aboutLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 26)
        aboutLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        aboutLabel.adjustsFontSizeToFitWidth = true
        
        //Background Image
        bgImage.image = #imageLiteral(resourceName: "adel-gordon-256808-unsplash")
        bgImage.contentMode = .scaleAspectFill
        bgImage.clipsToBounds = true
        
        //Blur View
        blurView.clipsToBounds = true
        
        //Text view
        aboutTextView.font = UIFont(name: "AvenirNext-Medium", size: 19)
        aboutTextView.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        aboutTextView.text = "Seeing is believing! Visualization can be powerful, research shows that people who imagine their goals are more confident they will achieve them vs those who dont. Visualize will help you embrace this! Whether its your dream home or car, must visit travel destinations or those luxury toys, Visualize will help you picture your future success. You can add any video to your favourites and share with friends."
        aboutTextView.adjustsFontForContentSizeCategory = true
        aboutTextView.backgroundColor = .clear
        aboutTextView.isEditable = false
        aboutTextView.isSelectable = false
        
        //Tab bar
        tabBarController?.tabBar.isHidden = true
        
        
    }
   

}
