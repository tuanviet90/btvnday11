//
//  ViewController.swift
//  RollingBallSwift
//
//  Created by VietMinSK on 9/29/14.
//  Copyright (c) 2014 VietMinsk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer: NSTimer?
    var alpha: CGFloat = 0.0
    var deltaAlpha: CGFloat = 0.0
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    
    @IBOutlet weak var ball: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollingball(sender: AnyObject) {
        x = self.ball.center.x
        y = self.ball.center.y
        alpha = 0
        deltaAlpha = 0.1
        timer = NSTimer.scheduledTimerWithTimeInterval(0.05, target: self,            selector: "animateBall:", userInfo: nil, repeats: true)
        timer?.fire()
    }
    func animateBall(timer: NSTimer) {
       alpha += deltaAlpha
        self.ball.transform = CGAffineTransformMakeRotation(alpha)
        x += 32 * deltaAlpha
        self.ball.center = CGPointMake(x, y)
    }
    
}

