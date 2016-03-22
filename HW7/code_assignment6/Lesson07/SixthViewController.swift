//
//  SixthViewController.swift
//  Lesson07
//
//  Created by William Martin on 1/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class SixthViewController: UIViewController {
    @IBOutlet weak var outputDisplayView: UITextView!
    var data : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // todo read the saved Array from the property list file, join its elements by single spaces into a single String, then display that String in the text view
        
        let arrayToRead = NSArray(contentsOfURL: getUrlForDocument("data.plist"))
        
        self.data = arrayToRead as! [String]
        let stringRepresentation = data.joinWithSeparator(" ")
        outputDisplayView.text = stringRepresentation
    }
    
    func getUrlForDocument(documentName: String) -> NSURL{
        let fileMgr = NSFileManager.defaultManager()
        let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let directory = urls.first!
        return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
    }
}
