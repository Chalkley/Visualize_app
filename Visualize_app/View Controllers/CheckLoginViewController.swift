//
//  CheckLoginViewController.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 15/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit
import Firebase
import FBSDKCoreKit

class CheckLoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setRootViewController()
        
    }
    
    func setRootViewController() {
        if Auth.auth().currentUser != nil {
            actionCallLoggedIn()
            
        } else {
            actioncallLogin()

        }
    }
    
    func actioncallLogin() {
        let loginPageView =  self.storyboard?.instantiateViewController(withIdentifier: "LoginPageID") as! LoginViewController
        self.present(loginPageView, animated: true, completion: nil)
        print("Need to login")
    }
    
    func actionCallLoggedIn() {
        let loggedInPageView =  self.storyboard?.instantiateViewController(withIdentifier: "HomePage") as! SelectionViewController
        self.present(loggedInPageView, animated: true, completion: nil)
        print("Logged in")
    }
    

}
