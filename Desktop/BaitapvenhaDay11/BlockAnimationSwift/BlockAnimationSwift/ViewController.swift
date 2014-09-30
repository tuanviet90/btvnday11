//
//  ViewController.swift
//  BlockAnimationSwift
//
//  Created by VietMinSK on 9/29/14.
//  Copyright (c) 2014 VietMinsk. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var cat: UIImageView!
    override func viewDidLoad() {
    super.viewDidLoad()
    }
    @IBAction func playcat(sender: AnyObject) {
        self.cat.center = CGPointMake(50, 50)
    UIView.animateWithDuration(1, animations: {
        self.cat.center = CGPointMake(280, 300)
            }, completion: { (finished: Bool) in
    UIView.animateWithDuration(2, animations: {
        self.cat.center = CGPointMake(50, 500)
            }, completion: nil)
        })
    }

}
    



