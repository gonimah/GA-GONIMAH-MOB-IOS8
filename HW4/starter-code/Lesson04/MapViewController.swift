import UIKit
/*
TODO three: Add TWO text views and a table view to this view controller, either using code or storybaord. Accept keyboard input from the two text views. When the 'return' button is pressed on the SECOND text view, add the text view data to a dictionary. The KEY in the dictionary should be the string in the first text view, the VALUE should be the second.

TODO four: Make this class a UITableViewDelegate and UITableViewDataSource that supply this table view with cells that correspond to the values in the dictionary. Each cell should print out a unique pair of key/value that the map contains. When a new key/value is inserted, the table view should display it.

TODO five: Make the background of the text boxes in this controller BLUE when the keyboard comes up, and RED when it goes down. Start with UIKeyboardWillShowNotification and NSNotificationCenter.
*/
class MapViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var dataDictionary = [String: String]()
    
    @IBOutlet weak var keyInputTextField: UITextField!
    @IBOutlet weak var valueInputTextField: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        dataDictionary[keyInputTextField.text!] = valueInputTextField.text!
        print(dataDictionary)
        listItems.reloadData()
    }
    
    @IBOutlet weak var listItems: UITableView!
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("dictionaryItem", forIndexPath: indexPath)
        let key = Array(dataDictionary.keys)[indexPath.row]
        let value = Array(dataDictionary.values)[indexPath.row]
        cell.textLabel?.text = key + " - " + value
        return cell
    
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataDictionary.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dismissViewControllerAnimated(false, completion: { () -> Void in
            self.view.backgroundColor = UIColor.blueColor()
        })
        self.view.backgroundColor = UIColor.redColor()
        
        listItems.dataSource = self
        listItems.delegate = self
        keyInputTextField.becomeFirstResponder()
        valueInputTextField.becomeFirstResponder()
        
        NSNotificationCenter.defaultCenter().addObserver(
            self,
            selector: "keyboardWillShow:",
            name: UIKeyboardWillShowNotification,
            object: nil)
        
        NSNotificationCenter.defaultCenter().addObserver(
            self,
            selector: "keyboardWillHide:",
            name: UIKeyboardWillHideNotification,
            object: nil)
    }
    
    func keyboardWillShow(notification: NSNotification) {
        keyInputTextField.backgroundColor = UIColor.blueColor()
        valueInputTextField.backgroundColor = UIColor.blueColor()

    }
    
    func keyboardWillHide(notification: NSNotification) {
        keyInputTextField.backgroundColor = UIColor.redColor()
        valueInputTextField.backgroundColor = UIColor.redColor()
    }
    
}
