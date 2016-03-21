import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var textDisplayField: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        textDisplayField.text = readTestStringAndTestNumberFromDefaults()
    }
    
    func readTestStringAndTestNumberFromDefaults() -> String {
        if let testStringValue = NSUserDefaults.standardUserDefaults().stringForKey("test_string"), testNumberValue =  NSUserDefaults.standardUserDefaults().objectForKey("test_number") as? Double {
            return "\(testStringValue) \(testNumberValue)"
        } else {
            return ""
        }
    }
}