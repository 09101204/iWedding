//
//  BaseModel.swift
//  iWedding
//
//  Created by 张青明 on 16/8/4.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

class BaseModel: NSObject {
    
    override func valueForUndefinedKey(key: String) -> AnyObject?
    {
        print("\(key) 字段没有定义,读取不到")
        return nil
    }
    
    /* Given that an invocation of -setValue:forKey: would be unable to set the keyed value using its default mechanism, set the keyed value using some other mechanism. The default implementation of this method raises an NSUndefinedKeyException. You can override it to handle properties that are dynamically defined at run-time.
     */
    
    override func setValue(value: AnyObject?, forUndefinedKey key: String)
    {
        print("类\(NSString(UTF8String: object_getClassName(self)))的\(key)字段没有定义,不能设置值")
    }
    
    override func setNilValueForKey(key: String)
    {
        print("\(#line): \(#function) key:\(key)")
    }
    
    //    /// 子类需要自己实现, 用以判断特殊字段
    //    override func setValue(value: AnyObject?, forKey key: String)
    //    {
    //        super.setValue(value, forKey: key)
    //    }
}
