import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var textDisplayField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textDisplayField.text = readTextFieldAndSliderValues()
    }
    
    func readTextFieldAndSliderValues() -> String {
        if let fieldValue = NSUserDefaults.standardUserDefaults().stringForKey("settings_name"), sliderValue =  NSUserDefaults.standardUserDefaults().objectForKey("settings_slider") as? Double {
            return "\(fieldValue) \(sliderValue)"
        } else {
            return ""
        }
    }
}
