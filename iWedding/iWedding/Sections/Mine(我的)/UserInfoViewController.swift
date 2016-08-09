
//
//  UserInfoViewController.swift
//  iWedding
//
//  Created by 张青明 on 16/8/10.
//  Copyright © 2016年 极客栈. All rights reserved.
//

import UIKit

class UserInfoViewController: UIViewController, UINavigationControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        navigationController?.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func navigationController(navigationController: UINavigationController, willShowViewController viewController: UIViewController, animated: Bool) {
        if viewController == self {
            navigationController.setNavigationBarHidden(true, animated: animated)
        }
        else {
            navigationController.setNavigationBarHidden(false, animated: animated)
        }
    }
    
//    override func viewWillDisappear(animated: Bool) {
//        super.viewWillDisappear(animated)
//        navigationController!.setNavigationBarHidden(false, animated: animated)
//    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
