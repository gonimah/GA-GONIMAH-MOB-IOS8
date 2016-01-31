//
//  ColorChangeViewController.swift
//  lesson-2-hw-01-28-2016
//
//  Created by Gonimah, Mayada on 1/30/16.
//  Copyright © 2016 Gonimah, Mayada. All rights reserved.
//

import UIKit

class ColorChangeViewController: UIViewController {

    @IBOutlet var colorOutputView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func changeColor(sender: AnyObject) {
        colorOutputView.backgroundColor = UIColor.brownColor()
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
