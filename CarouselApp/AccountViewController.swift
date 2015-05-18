//
//  AccountViewController.swift
//  CarouselApp
//
//  Created by Brandon Souba on 5/17/15.
//  Copyright (c) 2015 BrandonSOuba. All rights reserved.
//

import UIKit

class AccountViewController: UIViewController {
    
    @IBOutlet weak var middle: UIView!
    @IBOutlet weak var Bottom: UIView!
    @IBOutlet weak var Text: UIImageView!
    
    var BottomOrigin:CGPoint!
    var MiddleOrigin:CGPoint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        BottomOrigin = Bottom.center
        MiddleOrigin = middle.center
        
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillShow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "keyboardWillHide:", name: UIKeyboardWillHideNotification, object: nil)

        // Do any additional setup after loading the view.
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func keyboardWillShow(notification: NSNotification!) {
        var userInfo = notification.userInfo!
        
        // Get the keyboard height and width from the notification
        // Size varies depending on OS, language, orientation
        var kbSize = (userInfo[UIKeyboardFrameEndUserInfoKey] as! NSValue).CGRectValue().size
        var durationValue = userInfo[UIKeyboardAnimationDurationUserInfoKey] as! NSNumber
        var animationDuration = durationValue.doubleValue
        var curveValue = userInfo[UIKeyboardAnimationCurveUserInfoKey] as! NSNumber
        var animationCurve = curveValue.integerValue
        
        UIView.animateWithDuration(animationDuration, delay: 0.0, options: UIViewAnimationOptions(UInt(animationCurve << 16)), animations: {
            
            var difference:CGFloat = 75
            
            self.Bottom.center.y = self.BottomOrigin.y - 200
            self.middle.center.y = self.MiddleOrigin.y - difference

//            self.Text.center.y - 100
            self.Text.alpha = 0
//            self.Buttons.center.y = self.ButtonOrigin.y - difference
//            self.LoginText.alpha = 0
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
        
    }

    @IBAction func Close(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)

    }

    @IBAction func Terms(sender: UIButton) {
        sender.selected = true
    }
}
