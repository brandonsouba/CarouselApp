//
//  TutorialViewController.swift
//  CarouselApp
//
//  Created by Brandon Souba on 5/17/15.
//  Copyright (c) 2015 BrandonSOuba. All rights reserved.
//

import UIKit

class TutorialViewController: UIViewController,UIScrollViewDelegate {
    @IBOutlet weak var ScrollView: UIScrollView!
    

    @IBOutlet weak var Button: UIButton!
    
    @IBOutlet weak var PageControl: UIPageControl!

    override func viewDidLoad() {
        super.viewDidLoad()
        Button.alpha = 0

        ScrollView.delegate = self
        // Do any additional setup after loading the view.
    }

    
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.


    }

    
    func scrollViewDidEndDecelerating(ScrollView: UIScrollView!) {
        // Get the current page based on the scroll offset
        var page : Int = Int(round(ScrollView.contentOffset.x / 320))
        
        // Set the current page, so the dots will update
        PageControl.currentPage = page
        if page == 3 {
            UIView.animateWithDuration((0.5), animations: {
                self.Button.alpha = (1)
                
            })

        } else {
            UIView.animateWithDuration((0.5), animations: {
                self.Button.alpha = (0)        })
        }
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
