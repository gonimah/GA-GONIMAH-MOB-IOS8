import UIKit

class SecondViewController: UIViewController {
    
    //TODO five: Display the cumulative sum of all numbers added every time the ‘add’ button is pressed. Hook up the label, text box and button to make this work.
    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var outputNumber: UILabel!
    var total = 0
    
    @IBAction func addNumbers(sender: AnyObject) {
        let newNumToAdd:Int? = Int(inputNumber.text!)
        total = total + newNumToAdd!
        outputNumber.text = "\(total)"
    }
}