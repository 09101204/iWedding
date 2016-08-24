//
//  HttpUtils.swift
//  iWedding
//
//  Created by 张青明 on 16/8/25.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit
import Alamofire
let kRootUrl = ""

class HttpUtils: NSObject {
    class func requestGET(
        URLString: URLStringConvertible,
        parameters: [String: AnyObject]? = nil,
        encoding: ParameterEncoding = .URL,
        headers: [String: String]? = nil
        ) -> Request {
        return Alamofire.request(.GET, URLString, parameters: parameters, encoding: encoding, headers: headers)
    }
    
    class func requestPOST(
        URLString: URLStringConvertible,
        parameters: [String: AnyObject]? = nil,
        encoding: ParameterEncoding = .URL,
        headers: [String: String]? = nil
        ) -> Request {
        return Alamofire.request(.POST, URLString, parameters: parameters, encoding: encoding, headers: headers)
    }
}
