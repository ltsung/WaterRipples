//
//  ViewController.swift
//  ripples
//
//  Created by Lauren Tsung on 10/5/14.
//  Copyright (c) 2014 Y.CORP.YAHOO.COM\ltsung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func rippleTap(gestureRecognizer: UITapGestureRecognizer) {
         println("tapped")
         var tappedPoint = gestureRecognizer.locationInView(self.view)
        
         var ripple = UIView(frame: CGRect(x: tappedPoint.x, y: tappedPoint.y, width: 20, height: 20))
        
         view.addSubview(ripple)
        
         ripple.layer.cornerRadius = 10.0
        
         ripple.transform = CGAffineTransformMakeScale(0.3, 0.3)
        
         ripple.backgroundColor = UIColor.whiteColor()
        
         UIView.animateWithDuration(1.5, animations: {
            ripple.backgroundColor = UIColor.blueColor()
           
            ripple.transform = CGAffineTransformMakeScale(self.imageView.frame.width, self.imageView.frame.height)
            
            }){ (finished: Bool) -> Void in
                
                UIView.animateWithDuration(1.0, delay: 0.2, options: nil, animations: {
                  ripple.backgroundColor = UIColor.whiteColor()
                  ripple.transform = CGAffineTransformMakeScale(0.3, 0.3)
            }, completion: nil)
        }
    }
    
}


