//
//  CommunityPersonTopView.swift
//  iWedding
//
//  Created by 张青明 on 16/8/9.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

class CommunityPersonTopView: UIView {

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
        
        NSBundle.mainBundle().loadNibNamed("CommunityPersonTopView", owner: self, options: nil)
        
        self.addSubview(contentView)
    }

}
