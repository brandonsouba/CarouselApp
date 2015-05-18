//
//  SignViewController.swift
//  CarouselApp
//
//  Created by Brandon Souba on 5/13/15.
//  Copyright (c) 2015 BrandonSOuba. All rights reserved.
//

import UIKit

class SignViewController: UIViewController {
    @IBOutlet weak var SignInButton: UIImageView!
    @IBOutlet weak var SignInput: UIView!
    @IBOutlet weak var LoginText: UIImageView!
    @IBOutlet weak var Buttons: UIView!
    @IBOutlet weak var PasswordText: UITextField!
    @IBOutlet weak var RoundedButton: UIButton!
    
    
    @IBOutlet weak var SignText: UITextField!
    var ButtonOrigin:CGPoint!
    var SignInputOrigin:CGPoint!
    var userName = "Brandon"
    var password = "Awesome"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        RoundedButton.alpha = (0.5)
        ButtonOrigin = Buttons.center
        SignInputOrigin = SignInput.center
        
        
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
            
            var difference:CGFloat = 220
            
            self.SignInput.center.y = self.SignInputOrigin.y - 30
            self.Buttons.center.y = self.ButtonOrigin.y - difference
            self.LoginText.alpha = 0
            // Set view properties in here that you want to match with the animation of the keyboard
            // If you need it, you can use the kbSize property above to get the keyboard width and height.
            }, completion: nil)
        
    }
    
    func keyboardWillHide(notification: NSNotification!) {
        self.SignInput.center.y = self.SignInputOrigin.y
        self.Buttons.center.y = self.ButtonOrigin.y
        self.LoginText.alpha = 1
        
        
    }
    @IBAction func TapListener(sender: AnyObject) {
        self.view.endEditing(true)
    }
    
    var passwordAlert = UIAlertView(title: "Wrong Credentials", message: "You aren't, right", delegate: nil, cancelButtonTitle: "Ok")
    
    
    @IBAction func KeyChange(sender: AnyObject) {
        println("awesome")
        if SignText.text == "" || PasswordText.text == ""   {
            println("empty")
            UIView.animateWithDuration((0.5), animations: {
                self.RoundedButton.alpha = (0.4)
                
            })
            
        } else {
            println("dope")
            UIView.animateWithDuration((0.5), animations: {
                self.RoundedButton.alpha = (1)
                
            })
        }
        
        
    }
    
    
    @IBAction func RoundedButtonTap(sender: AnyObject) {
        let delayController = UIAlertController(title: "Logging in", message: "", preferredStyle: .Alert)
        self.presentViewController(delayController, animated: true) {
            // ...
        }
        func delay(delay:Double, closure:()->()) {
            dispatch_after(
                dispatch_time(
                    DISPATCH_TIME_NOW,
                    Int64(delay * Double(NSEC_PER_SEC))
                ),
                dispatch_get_main_queue(), closure)
        }
        
        delay(2) {
            delayController.dismissViewControllerAnimated(true, completion: {});
            
            if self.SignText.text == self.userName && self.PasswordText.text == self.password   {
                println("great")
                self.performSegueWithIdentifier("Awesome", sender: self)

                
            } else if self.SignText.text == "" || self.PasswordText.text == ""   {
            } else {
                let alertController = UIAlertController(title: "Login Error", message: "Please enter the correct username or password.", preferredStyle: .Alert)
                
                let OKAction = UIAlertAction(title: "OK", style: .Default) { (action) in
                    // ...
                }
                alertController.addAction(OKAction)
                
                self.presentViewController(alertController, animated: true) {
                    // ...
                }
            }
        }
    }
    
    
    
    
    //    @IBAction func EmailAddress(sender: AnyObject) {
    //        if SignText.text == "" {
    //            println("alert")
    //        }
    //    }
    //
    /*
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using segue.destinationViewController.
    // Pass the selected object to the new view controller.
    }
    */
    
}
