//
//  ViewController.swift
//  MotionEddects
//
//  Created by 刘志远 on 16/5/16.
//  Copyright © 2016年 刘志远. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    var catImageView:UIImageView?
    var catImageViewX:UIImageView?
    override func viewDidLoad() {
        super.viewDidLoad()
        UIApplication.sharedApplication().setStatusBarHidden(true, withAnimation: UIStatusBarAnimation.None)
        let mountainEddectX:UIInterpolatingMotionEffect = UIInterpolatingMotionEffect.init(keyPath: "center.x", type: UIInterpolatingMotionEffectType.TiltAlongHorizontalAxis)
        mountainEddectX.maximumRelativeValue = 50.0
        mountainEddectX.minimumRelativeValue = -50.0
        
        self.catImageView = UIImageView(frame: CGRectMake(0, 0, self.view.bounds.width, self.view.bounds.height))
        self.view.addSubview(self.catImageView!)
        self.catImageView?.image = UIImage(named: "head.jpg")
        self.catImageView!.addMotionEffect(mountainEddectX)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

