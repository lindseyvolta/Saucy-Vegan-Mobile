//
//  LandingPageViewController.swift
//  Saucy Vegan
//
//  Created by VOLTA, LINDSEY on 7/30/18.
//  Copyright © 2018 VOLTA, LINDSEY. All rights reserved.
//

import UIKit

class LandingPageViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        setUpViewControllers()
    }

    func setUpViewControllers() {
        let newsFeedVC = FeedTabViewController()
        newsFeedVC.title = "News Feed"
    
        let profileVC = UIViewController()
        profileVC.title = "Profile"
        
        let foodItemsVC = UIViewController()
        foodItemsVC.title = "Food"
        
        self.viewControllers = [
            UINavigationController(rootViewController: newsFeedVC),
            UINavigationController(rootViewController: foodItemsVC),
            UINavigationController(rootViewController: profileVC),
        ]
        
//        self.tabBar.items![0].image =
//        self.tabBar.items![1].image =
//        self.tabBar.items![2].image =
        
    }

}
