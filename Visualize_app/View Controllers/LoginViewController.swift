//
//  LoginViewController.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 14/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit
import Firebase
import FBSDKLoginKit

class LoginViewController: UIViewController {

    @IBOutlet weak var loginWithFacebookBtn: UIButton!
    @IBOutlet weak var welcomeLabel: UILabel!
    @IBOutlet weak var facebookImage: UIImageView!
    @IBOutlet weak var facebookLogoConstraint: NSLayoutConstraint!
    @IBOutlet weak var bgImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
    }
    
    @IBAction func loginWithFacebookTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.8, animations: {
            self.facebookImage.frame.origin.x += 250
            self.facebookImage.alpha = 0
            
        }) { (true) in
        let fbLoginManager = FBSDKLoginManager()
        fbLoginManager.logIn(withReadPermissions: ["public_profile", "email"], from: self) { (result, error) in
            if let error = error {
                print("Failed to login: \(error.localizedDescription)")
                return
            }
            
            guard let accessToken = FBSDKAccessToken.current() else {
                print("Failed to get access token")
                return
            }
            
            let credential = FacebookAuthProvider.credential(withAccessToken: accessToken.tokenString)
            
            // Perform login by calling Firebase APIs
            Auth.auth().signInAndRetrieveData(with: credential, completion: { (user, error) in
            
                if let error = error {
                    print("Login error: \(error.localizedDescription)")
                    let alertController = UIAlertController(title: "Login Error", message: error.localizedDescription, preferredStyle: .alert)
                    let okayAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                    alertController.addAction(okayAction)
                    self.present(alertController, animated: true, completion: nil)
                    
                    return
                }
                
                // Present the main view
                if let viewController = self.storyboard?.instantiateViewController(withIdentifier: "tabBar")  {
                    UIApplication.shared.keyWindow?.rootViewController = viewController
                    self.dismiss(animated: true, completion: nil)
                }
                
            })
            
        }
    }
        
    }
    
    func setupUI() {
        //Background image
        bgImage.image = #imageLiteral(resourceName: "adel-gordon-256808-unsplash")
        bgImage.contentMode = .scaleAspectFill
        //Welcome label
        welcomeLabel.text = "Welcome to Visualize"
        welcomeLabel.font = UIFont(name: "AvenirNext-DemiBold", size: 36)
        welcomeLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        welcomeLabel.adjustsFontSizeToFitWidth = true
        
        //Login button
        loginWithFacebookBtn.alpha = 0.9
        loginWithFacebookBtn.backgroundColor = #colorLiteral(red: 0.2478197813, green: 0.3189709783, blue: 0.7097881436, alpha: 1)
        loginWithFacebookBtn.setTitle("LOGIN WITH FACEBOOK", for: .normal)
        loginWithFacebookBtn.titleLabel?.font = UIFont(name: "AvenirNext-DemiBold", size: 20)
        loginWithFacebookBtn.setTitleColor(#colorLiteral(red: 1, green: 1, blue: 1, alpha: 1), for: .normal)
        loginWithFacebookBtn.layer.cornerRadius = 8
        loginWithFacebookBtn.clipsToBounds = true
        
        //Facebook logo
        facebookImage.alpha = 0.9
        facebookImage.image = #imageLiteral(resourceName: "facebookLogo")
        facebookImage.contentMode = .scaleAspectFill
        facebookImage.clipsToBounds = true
        facebookImage.layer.cornerRadius = 10
        
    }
    
}
    



