//
//  ViewController.swift
//  assignment-3-view-controllers
//
//  Created by Gonimah, Mayada on 2/17/16.
//  Copyright © 2016 Gonimah, Mayada. All rights reserved.
//

import UIKit

class ViewController1: UIViewController {
    var randomList: [String] = ["Eggs", "Milk"]
    
    @IBAction func gotoTable(sender: AnyObject) {
        performSegueWithIdentifier("gotoTableView", sender: self)
    }
    
    /*
    TODO one: Hook up a swipeable area on the home screen that must present a modal dialog when swiped. You must create the modal dialog and present it in CODE (not the storyboard).
    TODO two: Add an imageview to the modal dialog presented in TODO two.
    TODO three: Add and hook up a ‘dismiss’ button below the above mentioned image view that will dismiss the modal dialog. Do this in CODE.
    TODO four: Hook up the button on the home screen to push ArrayTableViewController into view (via the navigation controller) when tapped. Do this by triggering a segue from this view controller. The method you are looking for is performSegueWithIdentifier. Find the identifier from the storyboard.
    */

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
    

    


}

