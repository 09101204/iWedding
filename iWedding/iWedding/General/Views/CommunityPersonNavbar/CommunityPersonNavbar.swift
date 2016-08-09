//
//  CommunityPersonNavbar.swift
//  iWedding
//
//  Created by 张青明 on 16/8/9.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

class CommunityPersonNavbar: UIView {

    @IBOutlet var contentView: UIView!
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    // MARK: - 唤醒view
    override func awakeFromNib() {
        
        self.autoresizingMask = UIViewAutoresizing.None
        
        NSBundle.mainBundle().loadNibNamed("CommunityPersonNavbar", owner: self, options: nil)
        self.addSubview(contentView)
    }
    
    /*
    func navbar() -> CommunityPersonNavbar {
        let navbar = NSBundle.mainBundle().loadNibNamed("CommunityPersonNavbar", owner: nil, options: nil).first as! CommunityPersonNavbar
        
        let width = UIScreen.mainScreen().bounds.size.width
        
        navbar.frame = CGRectMake(0, 0, width, 64.0)
        
        return navbar
        
    }
    */

}
