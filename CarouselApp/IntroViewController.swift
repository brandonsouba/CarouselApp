//
//  IntroViewController.swift
//  CarouselApp
//
//  Created by Brandon Souba on 5/17/15.
//  Copyright (c) 2015 BrandonSOuba. All rights reserved.
//

import UIKit

class IntroViewController: UIViewController, UIScrollViewDelegate  {
    
    @IBOutlet weak var IntroScroll: UIScrollView!

    @IBOutlet weak var home1: UIImageView!
    
    @IBOutlet weak var home2: UIImageView!
    
    @IBOutlet weak var home3: UIImageView!
    
    @IBOutlet weak var home4: UIImageView!
    
    @IBOutlet weak var home5: UIImageView!
    
    @IBOutlet weak var home6: UIImageView!
    override func viewDidLoad(){
        println("fart")
       
        
        var yOffsets : [Float] = [-285, -240, -415, -408, -480, -500]
        var xOffsets : [Float] = [-30, 75, -66, 10, -200, -15]
        var scales : [Float] = [1, 1.65, 1.7, 1.6, 1.65, 1.65]
        var rotations : [Float] = [-10, -10, 10, 10, 10, -10]
        
        
        IntroScroll.delegate = self
        
        class MyViewController: UIViewController, UIScrollViewDelegate {
            
        }
        
    

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(IntroScroll: UIScrollView) {
        var offset = Float(IntroScroll.contentOffset.y)
        
        var tx = convertValue(offset, 0,568,-30,0)
        var ty = convertValue(offset, 0, 568, -285, 0)
        var ts = convertValue(offset, 0, 568, 1,1)
        var tr = convertValue(offset, 0, 568, -10, 0)
        
        home1.transform = CGAffineTransformMakeTranslation(CGFloat(tx), CGFloat(ty))
        
        home1.transform =
            CGAffineTransformScale(home1.transform, CGFloat(ts),CGFloat(ts))
        
        home1.transform =
            CGAffineTransformRotate(home1.transform, CGFloat(Double(tr) * M_PI / 180))
        
        var twox = convertValue(offset,0,568,50,0)
        var twoy = convertValue(offset, 0, 568, -280,0)
        var twos = convertValue(offset, 0, 568, 1.65,1)
        var twor = convertValue(offset,0,568,-10,0)
        
        home2.transform = CGAffineTransformMakeTranslation(CGFloat(twox), CGFloat(twoy))
        
        home2.transform =
            CGAffineTransformScale(home2.transform, CGFloat(twos),CGFloat(twos))
        
        home2.transform =
            CGAffineTransformRotate(home2.transform, CGFloat(Double(twor) * M_PI / 180))
        
        var threex = convertValue(offset,0,568,-66,0)
        var threey = convertValue(offset, 0, 568, -415,0)
        var threes = convertValue(offset, 0, 568, 1.7,1)
        var threer = convertValue(offset,0,568,10,0)
        
        home3.transform = CGAffineTransformMakeTranslation(CGFloat(threex), CGFloat(threey))
        
        home3.transform =
            CGAffineTransformScale(home3.transform, CGFloat(threes),CGFloat(threes))
        
        home3.transform =
            CGAffineTransformRotate(home3.transform, CGFloat(Double(threer) * M_PI / 180))
    
        var fourx = convertValue(offset,0,568,-100,0)
        var foury = convertValue(offset, 0, 568, -408,0)
        var fours = convertValue(offset, 0, 568, 1.6,1)
        var fourr = convertValue(offset,0,568,10,0)
        
        home4.transform = CGAffineTransformMakeTranslation(CGFloat(fourx), CGFloat(foury))
        
        home4.transform =
            CGAffineTransformScale(home4.transform, CGFloat(fours),CGFloat(fours))
        
        home4.transform =
            CGAffineTransformRotate(home4.transform, CGFloat(Double(fourr) * M_PI / 180))
        
        var fivex = convertValue(offset,0,568,-100,0)
        var fivey = convertValue(offset, 0, 568, -480,0)
        var fives = convertValue(offset, 0, 568, 1.66,1)
        var fiver = convertValue(offset,0,568,-10,0)
        
        home5.transform = CGAffineTransformMakeTranslation(CGFloat(fivex), CGFloat(fivey))
        
        home5.transform =
            CGAffineTransformScale(home5.transform, CGFloat(fives),CGFloat(fives))
        
        home5.transform =
            CGAffineTransformRotate(home5.transform, CGFloat(Double(fiver) * M_PI / 180))
        
        var sixx = convertValue(offset,0,568,-15,0)
        var sixy = convertValue(offset, 0, 568, -400,0)
        var sixs = convertValue(offset, 0, 568, 1.65,1)
        var sixr = convertValue(offset,0,568,10,0)
        
        home6.transform = CGAffineTransformMakeTranslation(CGFloat(sixx), CGFloat(sixy))
        
        home6.transform =
            CGAffineTransformScale(home6.transform, CGFloat(sixs),CGFloat(sixs))
        
        home6.transform =
            CGAffineTransformRotate(home6.transform, CGFloat(Double(sixr) * M_PI / 180))



    }
    
    

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
