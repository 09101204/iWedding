//
//  UIImageViewExtension.swift
//  iWedding
//
//  Created by 张青明 on 16/8/25.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

extension UIImageView {
    
    public override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.nextResponder()?.touchesBegan(touches, withEvent: event)
        super.touchesBegan(touches, withEvent: event)
    }
    
    public override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.nextResponder()?.touchesMoved(touches, withEvent: event)
        super.touchesMoved(touches, withEvent: event)
    }
    
    public override func touchesEnded(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.nextResponder()?.touchesEnded(touches, withEvent: event)
        super.touchesEnded(touches, withEvent: event)
    }
    
}

