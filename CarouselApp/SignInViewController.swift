//
//  SignInViewController.swift
//  CarouselApp
//
//  Created by Brandon Souba on 5/13/15.
//  Copyright (c) 2015 BrandonSOuba. All rights reserved.
//

import UIKit

class SignInViewController: UIViewController {

    override func viewDidLoad() {
        println("loaded")
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func DidSwipe(sender: AnyObject) {
        println("print big fart")
    }

    @IBAction func EnterEmail(sender: AnyObject) {
        println("awesome")

    }

    @IBAction func DidPressPassword(sender: AnyObject) {
        println("duh")
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
