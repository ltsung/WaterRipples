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
        
        //animateBackground()
        imageView.backgroundColor = UIColor.blueColor()
        imageView.alpha = 0.5
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func animateBackground() {
        var wave1 = UIView(frame: CGRect(x: 0, y: 20, width: 1500, height: 1500))
        wave1.layer.cornerRadius = 750
        wave1.backgroundColor = UIColor.blueColor()
        wave1.alpha = 0.1
        view.addSubview(wave1)
        
        var wave2 = UIView(frame: CGRect(x: 100, y: 20, width: 1500, height: 1500))
        wave2.layer.cornerRadius = 750
        wave2.backgroundColor = UIColor.blueColor()
        wave2.alpha = 0.1
        view.addSubview(wave2)
        
        var wave3 = UIView(frame: CGRect(x: 200, y: 20, width: 1500, height: 1500))
        wave3.layer.cornerRadius = 750
        wave3.backgroundColor = UIColor.blueColor()
        wave3.alpha = 0.1
        view.addSubview(wave3)
        
    }

    
    @IBAction func rippleTap(gestureRecognizer: UITapGestureRecognizer) {
        //println("tapped")
        

        var tappedPoint = gestureRecognizer.locationInView(self.view)
        
        var ripple1 = UIView(frame: CGRect(x: tappedPoint.x, y: tappedPoint.y, width: 15, height: 15))
        var ripple2 = UIView(frame: CGRect(x: tappedPoint.x, y: tappedPoint.y, width: 15, height: 15))
        var ripple3 = UIView(frame: CGRect(x: tappedPoint.x, y: tappedPoint.y, width: 15, height: 15))
        var ripple4 = UIView(frame: CGRect(x: tappedPoint.x, y: tappedPoint.y, width: 15, height: 15))
        var ripple5 = UIView(frame: CGRect(x: tappedPoint.x, y: tappedPoint.y, width: 15, height: 15))
        var ripple6 = UIView(frame: CGRect(x: tappedPoint.x, y: tappedPoint.y, width: 15, height: 15))
        var ripple7 = UIView(frame: CGRect(x: tappedPoint.x, y: tappedPoint.y, width: 15, height: 15))
        
        ripple1.layer.cornerRadius = 7.5
        ripple2.layer.cornerRadius = 7.5
        ripple3.layer.cornerRadius = 7.5
        ripple4.layer.cornerRadius = 7.5
        ripple5.layer.cornerRadius = 7.5
        ripple6.layer.cornerRadius = 7.5
        ripple7.layer.cornerRadius = 7.5

        view.addSubview(ripple7)
        view.addSubview(ripple6)
        view.addSubview(ripple5)
        view.addSubview(ripple4)
        view.addSubview(ripple3)
        view.addSubview(ripple2)
        view.addSubview(ripple1)
        
        ripple1.backgroundColor = UIColor.whiteColor()
        ripple2.backgroundColor = UIColor.grayColor()
        ripple3.backgroundColor = UIColor.whiteColor()
        ripple4.backgroundColor = UIColor.grayColor()
        ripple5.backgroundColor = UIColor.whiteColor()
        ripple6.backgroundColor = UIColor.grayColor()
        ripple7.backgroundColor = UIColor.whiteColor()
        
        ripple1.alpha = 0
        ripple2.alpha = 0
        ripple3.alpha = 0
        ripple4.alpha = 0
        ripple5.alpha = 0
        ripple6.alpha = 0
        ripple7.alpha = 0
        
        ripple1.transform = CGAffineTransformMakeScale(3, 3)
        ripple2.transform = CGAffineTransformMakeScale(5, 5)
        ripple3.transform = CGAffineTransformMakeScale(6.5, 6.5)
        ripple4.transform = CGAffineTransformMakeScale(7.5, 7.5)
        ripple5.transform = CGAffineTransformMakeScale(8.25, 8.25)
        ripple6.transform = CGAffineTransformMakeScale(9, 9)
        ripple7.transform = CGAffineTransformMakeScale(9.75, 9.75)
        
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            ripple1.alpha = 0.4
            ripple2.alpha = 0.35
        })
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            ripple3.alpha = 0.3
            ripple4.alpha = 0.25
            ripple5.alpha = 0.2
        })

        
        UIView.animateWithDuration(1.5, animations: { () -> Void in
            ripple1.alpha = 0
            ripple1.transform = CGAffineTransformMakeScale(5,5)
            
            ripple2.alpha = 0.25
            ripple2.transform = CGAffineTransformMakeScale(6.5, 6.5)
            
            ripple3.alpha = 0.2
            ripple3.transform = CGAffineTransformMakeScale(7.5, 7.5)
            
            ripple4.alpha = 0.15
            ripple4.transform = CGAffineTransformMakeScale(8.25, 8.25)
            
            ripple5.alpha = 0.1
            ripple5.transform = CGAffineTransformMakeScale(9, 9)
            
            ripple6.alpha = 0.1
            ripple6.transform = CGAffineTransformMakeScale(9.75, 9.75)
            
            ripple7.alpha = 0.05
            ripple7.transform = CGAffineTransformMakeScale(10.25, 10.25)
        })
        
        UIView.animateWithDuration(1.5, animations: { () -> Void in
            
            ripple2.alpha = 0
            ripple2.transform = CGAffineTransformMakeScale(7.5, 7.5)
            
            ripple3.alpha = 0.2
            ripple3.transform = CGAffineTransformMakeScale(8.25, 8.25)
            
            ripple4.alpha = 0.15
            ripple4.transform = CGAffineTransformMakeScale(9, 9)
            
            ripple5.alpha = 0.1
            ripple5.transform = CGAffineTransformMakeScale(9.75, 9.75)
            
            ripple6.alpha = 0.1
            ripple6.transform = CGAffineTransformMakeScale(10.25, 10.25)
            
            ripple7.alpha = 0.05
            ripple7.transform = CGAffineTransformMakeScale(11, 11)
        })

        UIView.animateWithDuration(1.5, animations: { () -> Void in
            
            ripple3.alpha = 0
            ripple3.transform = CGAffineTransformMakeScale(9,9)
            
            ripple4.alpha = 0.15
            ripple4.transform = CGAffineTransformMakeScale(9.75, 9.75)
            
            ripple5.alpha = 0.1
            ripple5.transform = CGAffineTransformMakeScale(10.25, 10.25)
            
            ripple6.alpha = 0.1
            ripple6.transform = CGAffineTransformMakeScale(11, 11)
            
            ripple7.alpha = 0.05
            ripple7.transform = CGAffineTransformMakeScale(12, 12)
        })

        UIView.animateWithDuration(2, animations: { () -> Void in
            
            ripple4.alpha = 0
            ripple4.transform = CGAffineTransformMakeScale(10.25, 10.25)
            
            ripple5.alpha = 0.15
            ripple5.transform = CGAffineTransformMakeScale(11, 11)
            
            ripple6.alpha = 0.1
            ripple6.transform = CGAffineTransformMakeScale(12, 12)
            
            ripple7.alpha = 0.05
            ripple7.transform = CGAffineTransformMakeScale(13, 13)
        })
        
        UIView.animateWithDuration(2, animations: { () -> Void in
            ripple5.alpha = 0
            ripple5.transform = CGAffineTransformMakeScale(12,12)
            
            ripple6.alpha = 0.1
            ripple6.transform = CGAffineTransformMakeScale(13, 13)
            
            ripple7.alpha = 0.05
            ripple7.transform = CGAffineTransformMakeScale(14, 14)
        })
        
        UIView.animateWithDuration(2, animations: { () -> Void in
            ripple6.alpha = 0
            ripple6.transform = CGAffineTransformMakeScale(14, 14)
            
            ripple7.alpha = 0.05
            ripple7.transform = CGAffineTransformMakeScale(15, 15)
        })
        
        UIView.animateWithDuration(2, animations: { () -> Void in
            ripple7.alpha = 0
            ripple7.transform = CGAffineTransformMakeScale(16, 16)
        })
        
    }
        
    @IBAction func dragWater(recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translationInView(self.view)
        var touchPoint: CGPoint!
        
        if recognizer.state == UIGestureRecognizerState.Began {
            touchPoint = recognizer.locationInView(self.view)
        } else if recognizer.state == UIGestureRecognizerState.Changed {
            touchPoint = recognizer.locationInView(self.view)
            generateWaves(touchPoint)
        } else if recognizer.state == UIGestureRecognizerState.Ended {
            touchPoint = recognizer.locationInView(self.view)
            generateLastRipple(touchPoint)
        }
        
    }
    
    func generateWaves(touchPoint: CGPoint) {
        var ripple1 = UIView(frame: CGRect(x: touchPoint.x, y: touchPoint.y, width: 15, height: 15))
        var ripple2 = UIView(frame: CGRect(x: touchPoint.x, y: touchPoint.y, width: 15, height: 15))
        var ripple3 = UIView(frame: CGRect(x: touchPoint.x, y: touchPoint.y, width: 15, height: 15))
        
        ripple1.layer.cornerRadius = 7.5
        ripple2.layer.cornerRadius = 7.5
        ripple3.layer.cornerRadius = 7.5
        
        view.addSubview(ripple3)
        view.addSubview(ripple2)
        view.addSubview(ripple1)
        
        ripple1.backgroundColor = UIColor.whiteColor()
        ripple2.backgroundColor = UIColor.grayColor()
        ripple3.backgroundColor = UIColor.whiteColor()
        
        ripple1.transform = CGAffineTransformMakeScale(1, 1)
        ripple2.transform = CGAffineTransformMakeScale(2, 2)
        ripple3.transform = CGAffineTransformMakeScale(2.5, 2.5)
        
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            ripple1.alpha = 0.15
            ripple2.alpha = 0.1
        })
        UIView.animateWithDuration(0.5, animations: { () -> Void in
            ripple3.alpha = 0.05
        })
        UIView.animateWithDuration(1, animations: { () -> Void in
            ripple1.alpha = 0
            ripple1.transform = CGAffineTransformMakeScale(2, 2)
            
            ripple2.alpha = 0.05
            ripple2.transform = CGAffineTransformMakeScale(2.5, 2.5)
            
            ripple3.alpha = 0.05
            ripple3.transform = CGAffineTransformMakeScale(3.5, 3.5)
        })
        UIView.animateWithDuration(1, animations: { () -> Void in
            ripple2.alpha = 0
            ripple2.transform = CGAffineTransformMakeScale(3.5, 3.5)
            
            ripple3.alpha = 0
            ripple3.transform = CGAffineTransformMakeScale(4, 4)
        })
        
    }
    
    func generateLastRipple(touchPoint: CGPoint) {
        
    }
    

}
    



/*
ripple.layer.cornerRadius = 7.5
ripple.transform = CGAffineTransformMakeScale(1, 1)
ripple.alpha = 0.2

//ripple.backgroundColor = UIColor.whiteColor()

UIView.animateWithDuration(1, animations: {
ripple.backgroundColor = UIColor.blueColor()
ripple.alpha = 0.4

ripple.transform = CGAffineTransformMakeScale(5,5)

}){ (finished: Bool) -> Void in

UIView.animateWithDuration(3.0, delay: 0.2, options: nil, animations: {
ripple.alpha = 0
ripple.transform = CGAffineTransformMakeScale(1, 1)
}, completion: nil)
}

*/


