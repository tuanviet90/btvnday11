//
//  ViewController.swift
//  TraillingStarSwift
//
//  Created by VietMinSK on 9/28/14.
//  Copyright (c) 2014 VietMinsk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var brown: UIImageView!
    @IBOutlet weak var green: UIImageView!
    @IBOutlet weak var red: UIImageView!
    @IBOutlet weak var violet: UIImageView!
    
    let MAX_HEIGHT = CGFloat(150)
    let X = CGFloat(160)
    var _timer: NSTimer?
    var _alpha: Double!
    var x: CGFloat = 0.0
    var x1: CGFloat = 0.0
    var x2: CGFloat = 0.0
    var x3: CGFloat = 0.0
    var y: CGFloat = 0.0
    var y1: CGFloat = 0.0
    var y2: CGFloat = 0.0
    var y3: CGFloat = 0.0
    var half_screen_height: Double!
    var step: Int = 0

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func playstar(sender: AnyObject) {
        self._timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "animateStar:", userInfo: nil, repeats: true)
        self._timer?.fire()
       }
    
    func configureInitialPosition() {
        half_screen_height = 160
        x = 0
        step = 0
    }
    func animateStar(timer: NSTimer) {
        y = self.scaleSin(x)
        self.red!.center = CGPointMake(x, y)
        x += 4
        
        x1 = x - 4 * 5
        y1 = self.scaleSin(x1)
        self.green!.center = CGPointMake(x1, y1)
        
        x2 = x1 - 4 * 5
        y2 = self.scaleSin(x2)
        self.violet!.center = CGPointMake(x2, y2)
        
        x3 = x2 - 4 * 5
        y3 = self.scaleSin(x3)
        self.brown!.center = CGPointMake(x3, y3)
        
        step++

}
    func scaleSin(input: CGFloat) -> CGFloat {
        return self.MAX_HEIGHT + self.MAX_HEIGHT * sin(input * CGFloat(M_PI) / self.X)
    }
    
}



