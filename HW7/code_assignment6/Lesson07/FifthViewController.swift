//
//  FIfthViewController.swift
//  Lesson07
//
//  Created by William Martin on 1/19/16.
//  Copyright © 2016 General Assembly. All rights reserved.
//

import UIKit

class FifthViewController: UIViewController {
    var data : [String] = []
    @IBOutlet weak var inputTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func saveToPlist() {
        if let inputText = inputTextField.text {
            data = inputText.characters.split{$0 == " "}.map(String.init)
        }
        let arrayToSave = data as NSArray
        arrayToSave.writeToURL(getUrlForDocument("data.plist"), atomically: true)
    }
    
    func getUrlForDocument(documentName: String) -> NSURL{
        let fileMgr = NSFileManager.defaultManager()
        let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let directory = urls.first!
        return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showSixthViewController") {
            saveToPlist()
        }
    }
}
