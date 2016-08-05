//
//  BaseTabBarController.swift
//  iWedding
//
//  Created by 张青明 on 16/8/5.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

private let kTintColor = UIColor(red: 1.0, green: 112.0/255.0, blue: 94.0/225.0, alpha: 1.0)

class BaseTabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - 只调用一次
    override class func initialize(){
        self.setupTabBarItem()
    }
    
    // MARK: - 设置TabBarItem属性
    class func setupTabBarItem() {
        let tabBar = UITabBar.appearance()
        // 一倍图图片高度为49(可以不需要),@2x图片高度49*2,@3x图片高度49*3
        //        tabBar.backgroundImage = UIImage(named: "bar")
        tabBar.translucent = true
        tabBar.tintColor   = kTintColor
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
