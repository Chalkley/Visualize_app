//
//  CustomTabBarController.swift
//  Visualize_app
//
//  Created by Jason Chalkley on 16/10/2018.
//  Copyright © 2018 Jason Chalkley. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController, UITabBarControllerDelegate {
    
    func getColoredImage(color: UIColor, size: CGSize) -> UIImage {
        let rect = CGRect(origin: CGPoint(x: 0, y: 0), size: size)
        UIGraphicsBeginImageContextWithOptions(size, false, 0)
        color.setFill()
        UIRectFill(rect)
        
        guard let image: UIImage = UIGraphicsGetImageFromCurrentImageContext() else { return UIImage() }
        UIGraphicsEndImageContext()
        
        return image 
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        return true
    }
    
    override func viewDidLoad() {
        setupViewControllers()
        delegate = self
    }
    
    func setupViewControllers() {
        let first = templateNavController(rootViewController: SelectionViewController(), image: #imageLiteral(resourceName: "home"))
        let second = templateNavController(rootViewController: MoreViewController(), image: #imageLiteral(resourceName: "menux1"))
    self.viewControllers = [first, second]
        tabBar.backgroundImage = getColoredImage(color: .clear, size: CGSize(width: view.frame.width, height: 100))
    }
    
    
}

func templateNavController(rootViewController: UIViewController, image: UIImage) -> UINavigationController {
    let navController = UINavigationController(rootViewController: rootViewController)
    navController.tabBarItem.image = image
    return navController
    
}
