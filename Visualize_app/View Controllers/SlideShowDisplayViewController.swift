//
//  SlideShowDisplayViewController.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 18/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit
import WebKit
import CoreData

class SlideShowDisplayViewController: UIViewController, WKUIDelegate, WKNavigationDelegate {

    @IBOutlet weak var webViewFrame: UIView!
    @IBOutlet weak var webView: WKWebView!
    @IBOutlet weak var addToFavouritesBtn: UIButton!
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var blurBg: UIVisualEffectView!
    @IBOutlet weak var changeVideo: UIButton!

    var indexes = [Int]()
    
    var catBG : [VideoID] = []
    var categorySelection = [VideoID]()
    
    var updatedVideoSelection : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        changeVideo.startShimmering()
        addToFavouritesBtn.startShimmering()
        setupUI()
        print("Video ID's: \(categorySelection)")
        webView.uiDelegate = self
        webView.configuration.allowsInlineMediaPlayback = true
        webView.navigationDelegate = self
        webView.isOpaque = false 
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        changeVideo.startShimmering()
        addToFavouritesBtn.startShimmering()
    }
    
    func addToFavouritesAlert() {
        let alert = UIAlertController(title: "Success.", message: "Video has been added to favoruites :)", preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: UIAlertAction.Style.cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    @IBAction func changeTapped(_ sender: Any) {
        
       activityIndicator.startAnimating()
        if let selectedVideo = categorySelection.randomElement() {

        webView.loadHTMLString((selectedVideo.videoLink ?? nil)!, baseURL: nil)

        webView.reloadInputViews()
        
        activityIndicator.hidesWhenStopped = true
        print("Selected video link: \(selectedVideo.videoLink)")

        updatedVideoSelection = selectedVideo.videoLink
        print("Updated video selection = \(selectedVideo.videoLink)")
        }
        
        print("Change video tapped")
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()

    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.stopAnimating()

    }
    
    @IBAction func addToFavouritesTapped(_ sender: Any) {
        let videoToSave = Favourite(context: PersistenceService.context)
        videoToSave.link = updatedVideoSelection
        
        PersistenceService.saveContext()
        
        addToFavouritesAlert()
        print("Added to favourites successful, VideoID: \(videoToSave.link)")
    }
    
    
    override func observeValue(forKeyPath keyPath: String?, of object: Any?, change: [NSKeyValueChangeKey : Any]?, context: UnsafeMutableRawPointer?) {
        if keyPath == "estimatedProgress" {
            print(Float(webView.estimatedProgress))
        }
    }
    
    func setupUI() {
        //Activity indicator
        activityIndicator.startAnimating()
        activityIndicator.hidesWhenStopped = true 
        activityIndicator.style = .whiteLarge
        activityIndicator.color = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        activityIndicator.center = view.center
        //Nav bar
        navigationController?.navigationBar.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        //Web view
        let selectedVideo = categorySelection.randomElement()
        webView.loadHTMLString((selectedVideo?.videoLink ?? nil)!, baseURL: nil)
        updatedVideoSelection = selectedVideo?.videoLink
        print(selectedVideo as Any)
        //Change Video Button
        changeVideo.setTitle("CHANGE VIDEO", for: .normal)
        changeVideo.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        changeVideo.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 20)

        changeVideo.backgroundColor = .clear
        changeVideo.layer.borderWidth = 2
        changeVideo.layer.borderColor = #colorLiteral(red: 1, green: 0.4604874445, blue: 0, alpha: 0.69)
        changeVideo.layer.cornerRadius = 8
        changeVideo.clipsToBounds = true
        changeVideo.layer.shadowOffset = CGSize(width: 3, height: 5)
        changeVideo.layer.shadowOpacity = 0.5
        changeVideo.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        changeVideo.layer.shadowRadius = 10
        //Add To Favourites Button
        addToFavouritesBtn.setTitle("ADD TO FAVOURITES", for: .normal)
        addToFavouritesBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        addToFavouritesBtn.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 20)

        addToFavouritesBtn.backgroundColor = .clear
        addToFavouritesBtn.layer.borderWidth = 2
        addToFavouritesBtn.layer.borderColor = #colorLiteral(red: 1, green: 0.4604874445, blue: 0, alpha: 0.69)
        addToFavouritesBtn.layer.cornerRadius = 8
        addToFavouritesBtn.clipsToBounds = true
        addToFavouritesBtn.layer.shadowOffset = CGSize(width: 3, height: 5)
        addToFavouritesBtn.layer.shadowOpacity = 0.5
        addToFavouritesBtn.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        addToFavouritesBtn.layer.shadowRadius = 10
        //Background image
        bgImage.image = #imageLiteral(resourceName: "adel-gordon-256808-unsplash")
        bgImage.contentMode = .scaleAspectFill
        bgImage.clipsToBounds = true
        //Blur view
        blurBg.clipsToBounds = true
        
    }
    
    func initCategory(wallpaper: Selection) {
        categorySelection = DataServ.instance.getSelectionVideo(forCategory: wallpaper.selectionTitle!)
        catBG = categorySelection
        navigationItem.title = wallpaper.selectionTitle?.uppercased()
        navigationItem.titleView?.tintColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
    }
}
    








