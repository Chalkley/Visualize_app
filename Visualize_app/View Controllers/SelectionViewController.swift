//
//  SelectionViewController.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 15/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit
import Firebase


class SelectionViewController: UIViewController {
        
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var bgImage: UIImageView!
    
    var selectionData = [VideoID]()
    var selectionSegue = "selectionToSlideShowSegue"
    
    var cellID = "SelectionCollectionViewCell"

    override func viewDidLoad() {
            super.viewDidLoad()
            setupUI()
            collectionView.dataSource = self
            collectionView.delegate = self
        
        //Set Nav bar to clear
            if let navController = navigationController {
                System.clearNavigationBar(forBar: navController.navigationBar)
                navController.view.backgroundColor = .clear
            }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setupUI()
    }
    
    func getColoredImage(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        
        guard let image: UIImage = UIGraphicsGetImageFromCurrentImageContext() else { return UIImage() }
        UIGraphicsEndImageContext()
        
        return image
    }
    

    func setupUI() {
        //Username label
        usernameLabel.backgroundColor = .clear
        usernameLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        usernameLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 26)
        usernameLabel.adjustsFontSizeToFitWidth = true
        usernameLabel.numberOfLines = 2
        if let currentUser = Auth.auth().currentUser {
            usernameLabel.text = "Visualize your future \(currentUser.displayName as! String)"
        }
        //Collection view
        collectionView.backgroundColor = .clear
        //Main BG Image
        bgImage.image = #imageLiteral(resourceName: "adel-gordon-256808-unsplash")
        bgImage.contentMode = .scaleAspectFill
        //Tab Bar Controller
        tabBarController?.tabBar.backgroundImage = getColoredImage(color: .clear, size: CGSize(width: view.frame.width, height: 100))
        self.tabBarController?.tabBar.items![0].image = UIImage(named: "Home40")
        self.tabBarController?.tabBar.items![1].image = UIImage(named: "Menu40")
        tabBarController?.tabBar.unselectedItemTintColor = .white 
        
        UITabBar.appearance().layer.borderWidth = 0.0
        UITabBar.appearance().clipsToBounds = true
        self.tabBarController?.tabBar.shadowImage = UIImage()
      
    }
}

extension SelectionViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return DataServ.instance.getSelectionList().count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! SelectionCollectionViewCell
        let selectionCell = DataServ.instance.getSelectionList()[indexPath.row]
        cell.updateViews(selection: selectionCell)
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let category = DataServ.instance.getSelectionList()[indexPath.row]
        performSegue(withIdentifier: selectionSegue, sender: category)

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destVC = segue.destination as? SlideShowDisplayViewController {
            destVC.initCategory(wallpaper: sender as! Selection)
           
            
        }
    }
    
}



