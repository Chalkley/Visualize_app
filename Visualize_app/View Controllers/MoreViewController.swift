//
//  MoreViewController.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 16/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit
import StoreKit
import MessageUI

class MoreViewController: UIViewController, MFMailComposeViewControllerDelegate {

    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var bgBlur: UIVisualEffectView!
    @IBOutlet weak var tableView: UITableView!
    
    var cellID = "moreTableViewCell"
    var aboutSegue = "moreToAboutVC"
    var favouritesSegue = "moreToFavouritesVC"
    var more = [More]()
    final private let shareLink = "Visualize your future now! Available from the App Store: https://itunes.apple.com/us/app/gym-go/id1431569997?ls=1&mt=8"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        tableView.dataSource = self
        tableView.delegate = self
    
        more = DataServ.instance.gerMoreTableView()
        
        if let navController = navigationController {
            System.clearNavigationBar(forBar: navController.navigationBar)
            navController.view.backgroundColor = .clear
        }

    }
    
    override func viewDidAppear(_ animated: Bool) {
        tabBarController?.tabBar.isHidden = false 
    }
    
    func setupUI() {
        //Table view
        tableView.backgroundColor = .clear
        
        //BG Image
        bgImage.image = #imageLiteral(resourceName: "adel-gordon-256808-unsplash")
        bgImage.contentMode = .scaleAspectFill
        
        //Tab bar
        UITabBar.appearance().layer.borderWidth = 0.0
        UITabBar.appearance().clipsToBounds = true
        self.tabBarController?.tabBar.shadowImage = UIImage()
        
    }
    
    func openInBrowser(url:URL) {
        print("open in preferred browser")
        
        var browser = "safari"
        if browser == "opera" {
            browser = "firefox://open-url?url=http://"
        } else if browser == "chrome" {
            browser = "googleChrome://"
        } else if browser == "safari" {
            browser = "safari://"
        }
        
        if UIApplication.shared.canOpenURL(url) {
            UIApplication.shared.open(url, options: [UIApplication.OpenExternalURLOptionsKey(rawValue: "") : ""], completionHandler: nil)
        }
    }
    
    func configureMailControllerAddVideo() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["jasonmchalkley@gmail.com"])
        mailComposerVC.setSubject("Add video request")
        mailComposerVC.setMessageBody("Please add video category & full link.", isHTML: true)
        return mailComposerVC
    }
    
    func configureMailController() -> MFMailComposeViewController {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        mailComposerVC.setToRecipients(["jasonmchalkley@gmail.com"])
        mailComposerVC.setSubject("Visualize feedback")
        return mailComposerVC
    }
    
    func showMailError() {
        let sendMailErrorAlert = UIAlertController(title: "Could not send email", message: "Your device could not send email", preferredStyle: .alert)
        let dismiss = UIAlertAction(title: "Ok", style: .default, handler: nil)
        sendMailErrorAlert.addAction(dismiss)
        self.present(sendMailErrorAlert, animated: true, completion: nil)
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        controller.dismiss(animated: true, completion: nil)
    }

}

extension MoreViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return more.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellID, for: indexPath) as! MoreTableViewCell
        let moreView = more[indexPath.row]
        cell.updateViews(more: moreView)
        cell.selectionStyle = .none 
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: aboutSegue, sender: self)
        case 1:
            let mailComposeViewController = configureMailController()
            if MFMailComposeViewController.canSendMail() {
                self.present(mailComposeViewController, animated: true, completion: nil)
            } else {
                showMailError()
            }
        case 2:
            if #available( iOS 10.3,*){
                SKStoreReviewController.requestReview()
            }
        case 3:
            let activityController = UIActivityViewController(activityItems: [shareLink], applicationActivities: nil)
            activityController.completionWithItemsHandler = { (nil, completed, _, error) in
                if completed {
                    print("completed")
                } else {
                    print("canceled")
                }
            }
            present(activityController, animated: true) {
            }
        case 4:
            let mailComposeViewController = configureMailControllerAddVideo()
            if MFMailComposeViewController.canSendMail() {
                self.present(mailComposeViewController, animated: true, completion: nil)
            } else {
                showMailError()
            }
        case 5:
            self.performSegue(withIdentifier: favouritesSegue, sender: self)

        default:
            break
        }
    }
    
}
