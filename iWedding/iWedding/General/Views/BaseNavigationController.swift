//
//  BaseNavigationController.swift
//  iWedding
//
//  Created by 张青明 on 16/8/5.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

private let kTitleTextColor:UIColor = UIColor(red: 1.0, green: 112.0/255.0, blue: 94.0/225.0, alpha: 1.0)

private let kTitleTextFont = UIFont.systemFontOfSize(17.0)

@objc
protocol BaseNavigationControllerDelegate:UINavigationBarDelegate
{
    optional func backToViewCtrl()
}

class BaseNavigationController: UINavigationController {
    
    var myDelegate:BaseNavigationControllerDelegate? = nil
    
    
    // MARK: - ============= 系统生命周期 =============
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
        self.setupNavigationBar()
    }
    
    // MARK: - 重写push,添加自己的返回按钮
    override func pushViewController(viewController: UIViewController, animated: Bool) {
        if self.viewControllers.count > 0
        {
            let backButton = UIButton()
            //            backButton.setBackgroundImage(UIImage(named: ""), forState: .Normal)
            //            backButton.setBackgroundImage(UIImage(named: ""), forState: .Highlighted)
            backButton.setImage(UIImage(named: "back"), forState: UIControlState.Normal)
            backButton.setImage(UIImage(named: "back"), forState: UIControlState.Highlighted)
            backButton.setTitle(" 返回", forState: UIControlState.Normal)
            backButton.setTitle(" 返回", forState: UIControlState.Highlighted)
            backButton.addTarget(self, action: #selector(BaseNavigationController.popToForwardViewCtrl(_:)), forControlEvents: UIControlEvents.TouchUpInside)
            
            if let imageSize = backButton.currentImage?.size
            {
                backButton.frame = CGRectMake(0, 0, imageSize.width+50, imageSize.height)
            }
            else
            {
                backButton.frame = CGRectMake(0, 0, 12, 24)
            }
            
            viewController.navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
            viewController.hidesBottomBarWhenPushed = true
            
        }
        super.pushViewController(viewController, animated: true)
        
        if self.respondsToSelector(Selector("interactivePopGestureRecognizer"))
        {
            self.interactivePopGestureRecognizer?.delegate = nil
        }
    }
    
    func popToForwardViewCtrl(sender: UIButton!)
    {
        if let mDelegate = self.myDelegate
        {
            if mDelegate.respondsToSelector(#selector(BaseNavigationControllerDelegate.backToViewCtrl))
            {
                mDelegate.backToViewCtrl!()
                return
            }
        }
        else
        {
            self.popViewControllerAnimated(true)
        }
        
    }
    
    
    // MARK: - =============   修改UI属性   =============
    // MARK: - 设置导航条属性
    class func setupNavigationBar()
    {
        // 获取导航条
        let navigationBar = UINavigationBar.appearance()
        
        // 定义一个可变字典变量,用于保存bar属性
        var titleTextAttributes = [String: AnyObject]()

        // 设置字体颜色
        titleTextAttributes[NSForegroundColorAttributeName] = kTitleTextColor
        titleTextAttributes[NSFontAttributeName] = kTitleTextFont
        
        navigationBar.titleTextAttributes = titleTextAttributes
        
        // 半透明属性
        navigationBar.translucent = false

        
//        // 设置bar背景图
//        navigationBar.setBackgroundImage(UIImage(named: "bgTabbar"), forBarMetrics: UIBarMetrics.Default)
        
        //设置bar样式,如果不设置,那么状态栏样式不会改变!!
        navigationBar.barStyle = UIBarStyle.Default
        //设置状态栏样式
        UIApplication.sharedApplication().setStatusBarStyle(UIStatusBarStyle.LightContent, animated: true)
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
