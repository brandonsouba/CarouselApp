//
//  FeedViewController.swift
//  CarouselApp
//
//  Created by Brandon Souba on 5/17/15.
//  Copyright (c) 2015 BrandonSOuba. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {
    
    @IBOutlet weak var bike: UIImageView!
    
    @IBOutlet weak var ScrollView: UIScrollView!
    
    @IBOutlet weak var Banner: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        bike.center.x = 0
        
        ScrollView.insertSubview(Banner, atIndex: 1)

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
