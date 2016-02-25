import UIKit

/*
TODO one: Add a table view AND a text input box to this view controller, either in code or via the storyboard. Accept keyboard input from the text view when the return key is pressed. Add the string that was entered into the text view into an array of strings (stored in this class).
TODO two: Make this class a UITableViewDelegate and UITableViewDataSource that supply the above table view with cells. These cells should correspond to the text entered into the text box. E.g. If the text "one", then "two", then "three" was entered into the text box, there should be three cells in this table view that contain those strings in order.

*/
class ArrayViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var choresListItems : [String] = []
    @IBOutlet weak var listItems: UITableView!
    @IBOutlet weak var choresInputTextField: UITextField!
    
    @IBAction func addItem(sender: AnyObject) {
        choresListItems.append(choresInputTextField.text!)
        choresInputTextField.text = ""
        print(choresListItems)
        listItems.reloadData()
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("choresItem", forIndexPath: indexPath)
        cell.textLabel?.text = choresListItems[indexPath.row]
        
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return choresListItems.count
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dismissViewControllerAnimated(false, completion: { () -> Void in
            self.view.backgroundColor = UIColor.blueColor()
        })
        self.view.backgroundColor = UIColor.redColor()
        
        listItems.dataSource = self
        listItems.delegate = self
        choresInputTextField.becomeFirstResponder() //todo is this working?
        
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
        choresInputTextField.backgroundColor = UIColor.blueColor()
    }
    
    func keyboardWillHide(notification: NSNotification) {
        choresInputTextField.backgroundColor = UIColor.redColor()
    }
}

