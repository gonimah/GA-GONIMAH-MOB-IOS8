import UIKit

class ThirdViewController: UIViewController {
    /*
    TODO six: Hook up the number input text field, button and text label to this class. When the button is pressed, a message should be printed to the label indicating whether the number is even.
    
    */
    
    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var outputField: UILabel!
    
    @IBAction func printIsEvenOrOdd(sender: AnyObject) {
        let number:Int? = Int(inputNumber.text!)        
        if (number! % 2 == 0) {
            outputField.text = "It's even!"
        } else {
            outputField.text = "It's odd!"
        }
    }
}