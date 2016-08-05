//
//  EnquireAlertView.swift
//  iWedding
//
//  Created by 张青明 on 16/8/5.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit


class EnquireAlertView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override class func initialize() {
        
    }
    
    // MARK: - 唤醒view
    override func awakeFromNib() {
        
        self.autoresizingMask = UIViewAutoresizing.None
    }
    
    override func layoutSubviews() {
        
    }

    // MARK: - 关联.xib
    @IBOutlet weak var lblTitle: UILabel!
    
    @IBOutlet weak var lblMessage: UILabel!
    
    @IBOutlet weak var vContainer: UIView!
    
    @IBAction func onClickGiveUpButton(sender: AnyObject) {
        // TODO:
    }
    
    @IBAction func onClickContinueButton(sender: AnyObject) {
        // TODO:
    }
    
    
    func alertView() -> EnquireAlertView {
        print(#function)
        return NSBundle.mainBundle().loadNibNamed("EnquireAlertView", owner: nil, options: nil).first as! EnquireAlertView
    }
    
    func show() {
        print(self)
        let a = alertView()
        a.frame = topViewController().view.bounds
        topViewController().view.addSubview(a)
        print(self)
    }
    
    func topViewController() -> UIViewController {
        let rootVC: UIViewController = (UIApplication.sharedApplication().keyWindow?.rootViewController)!
        
        var topVC = rootVC
        while ((topVC.presentedViewController) != nil) {
            topVC = topVC.presentedViewController!
        }
        
        return topVC
    }

}
