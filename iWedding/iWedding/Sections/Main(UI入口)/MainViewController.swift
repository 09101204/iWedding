//
//  MainViewController.swift
//  iWedding
//
//  Created by 张青明 on 16/8/6.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

class MainViewController: NSObject {
    class func viewControllers() -> BaseTabBarController {
        
        let homeNavCtrl = UIStoryboard(name: "Home", bundle: nil).instantiateInitialViewController() as! BaseNavigationController
        homeNavCtrl.tabBarItem = UITabBarItem(title: "首页", image: UIImage(named: "tab_1_gray"), selectedImage: UIImage(named: "tab_1")?.imageWithRenderingMode(.AlwaysOriginal))
        
        let categoryNavCtrl = UIStoryboard(name: "Category", bundle: nil).instantiateInitialViewController() as! BaseNavigationController
        categoryNavCtrl.tabBarItem = UITabBarItem(title: "分类", image: UIImage(named: "tab_2_gray"), selectedImage: UIImage(named: "tab_2")?.imageWithRenderingMode(.AlwaysOriginal))
        
        let communityNavCtrl = UIStoryboard(name: "Community", bundle: nil).instantiateInitialViewController() as! BaseNavigationController
        communityNavCtrl.tabBarItem = UITabBarItem(title: "新娘说", image: UIImage(named: "tab_3_gray"), selectedImage: UIImage(named: "tab_3")?.imageWithRenderingMode(.AlwaysOriginal))
        
        let toolNavCtrl = UIStoryboard(name: "Tool", bundle: nil).instantiateInitialViewController() as! BaseNavigationController
        toolNavCtrl.tabBarItem = UITabBarItem(title: "工具", image: UIImage(named: "tab_4_gray"), selectedImage: UIImage(named: "tab_4")?.imageWithRenderingMode(.AlwaysOriginal))
        
        let mineNavCtrl = UIStoryboard(name: "Mine", bundle: nil).instantiateInitialViewController() as! BaseNavigationController
        mineNavCtrl.tabBarItem = UITabBarItem(title: "我的", image: UIImage(named: "tab_5_gray"), selectedImage: UIImage(named: "tab_5")?.imageWithRenderingMode(.AlwaysOriginal))
        
        
        let tabbarCtrl = BaseTabBarController()
        tabbarCtrl.viewControllers = [homeNavCtrl, categoryNavCtrl, communityNavCtrl, toolNavCtrl, mineNavCtrl]
        
        return tabbarCtrl
    }
}
