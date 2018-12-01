//
//  FavouritesViewController.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 29/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit
import CoreData
import WebKit

class FavouritesViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var favouritesTitleLabel: UILabel!
    @IBOutlet weak var bgImage: UIImageView!
    
   @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    var favourite = [Favourite]()
    var cellID = "FavouritesCollectionViewCell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.rightBarButtonItem = editButtonItem
        setupUI()
        fetchRequest()
        collectionView.dataSource = self
        collectionView.delegate = self
        collectionView.reloadData()
        print(favourite)
        activityIndicator.isHidden = true
        
        if (self.favourite.count > 0) {
            UIView.animate(withDuration: 4, animations: {
                self.activityIndicator.isHidden = false
                self.activityIndicator.color = #colorLiteral(red: 1, green: 0.4604874445, blue: 0, alpha: 1)
                self.activityIndicator.style = .whiteLarge
                self.activityIndicator.center = self.view.center
                self.activityIndicator.startAnimating()
                self.activityIndicator.hidesWhenStopped = true
            }) { (true) in
                self.activityIndicator.stopAnimating()
                self.activityIndicator.isHidden = true
            }
        }
    }
    
    
    
    override func viewDidDisappear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false 
    }
    
    func setupUI() {
        //Screen title label
        favouritesTitleLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 26)
        favouritesTitleLabel.text = "Favourites"
        favouritesTitleLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        favouritesTitleLabel.adjustsFontSizeToFitWidth = true
    
        //Background Image
        bgImage.image = #imageLiteral(resourceName: "adel-gordon-256808-unsplash")
        bgImage.contentMode = .scaleAspectFill
        
        //Tab bar
        tabBarController?.tabBar.isHidden = true
    
        }
    
    override func setEditing(_ editing: Bool, animated: Bool) {
        super .setEditing(editing, animated: animated)
        if let indexPaths = collectionView?.indexPathsForVisibleItems {
            for indexPath in indexPaths {
                if let cell = collectionView.cellForItem(at: indexPath) as? FavouritesCollectionViewCell {
                    cell.isEditing = editing
                }
            }
        }
        
    }
    
    func fetchRequest() {
        let fetchRequest: NSFetchRequest<Favourite> = Favourite.fetchRequest()
        
        do {
            let fav = try PersistenceService.context.fetch(fetchRequest)
            self.favourite = fav
            self.collectionView.reloadData()
        } catch {
            print("Unable to fetch video data, error: \(error)")
        }
    }
    
}

extension FavouritesViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if (self.favourite.count == 0) {
            self.collectionView.setEmptyMessage("No favourites picked yet! :(")
        } else {
            self.collectionView.restore()
        }
        return self.favourite.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: self.cellID, for: indexPath) as! FavouritesCollectionViewCell
        DispatchQueue.main.async(execute: { () -> Void in
            cell.favouritesWebView.loadHTMLString(self.favourite[indexPath.row].link!, baseURL: nil)
            cell.backgroundColor = .clear
            cell.delegate = self
            
        })
        
        return cell
    }
}

extension FavouritesViewController: FavouriteCellDelegate {
    
    func delete(cell: FavouritesCollectionViewCell) {
        if let index = collectionView.indexPath(for: cell) {
            
            PersistenceService.context.delete(self.favourite[index.row])
            
            do {
                try PersistenceService.context.save()
                self.favourite.removeAll()
                self.fetchRequest()
                self.collectionView.reloadData()
                
            } catch let Err {
                print(Err.localizedDescription)
                //create alert to go here incase entry doesnt delete.
                self.deleteRowFailed()
            }
            
            
        }
    }
    
    func deleteRowFailed() {
        let alert = UIAlertController(title: "Delete Failed", message: "Please try again.", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
}

