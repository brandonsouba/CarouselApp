//
//  SignedInViewController.swift
//  CarouselApp
//
//  Created by Brandon Souba on 5/13/15.
//  Copyright (c) 2015 BrandonSOuba. All rights reserved.
//

import UIKit

class SignedInViewController: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)
        
        
        func keyboardWillHide(notification: NSNotification!) {
//            var userInfo = notification.userInfo!
//            
//            // Get the keyboard height and width from the notification
//            // Size varies depending on OS, language, orientation
//            var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
//            var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
//            var animationDuration = durationValue.doubleValue
//            var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey]as! NSNumber
//            var animationCurve = curveValue.integerValue
//            
//            UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
                println("fart")
                // Set view properties in here that you want to match with the animation of the keyboard
                // If you need it, you can use the kbSize property above to get the keyboard width and height.
//                }, completion: nil)
        }

        
        


        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
