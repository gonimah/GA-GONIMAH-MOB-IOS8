import UIKit

class FourthViewController: UIViewController {
    /*
    BONUS TODO seven: Hook up the text input box, label and and a ‘calculate’ button. Create a ‘fibonacci adder’ class with a method ‘fibonacciNumberAtIndex' which takes indexOfFibonacciNumber (an integer).  When the button is pressed, create an instance of that class, call the method, and print out the appropriate fibonacci number of an inputted integer.
    The first fibonacci number is 0, the second is 1, the third is 1, the fourth is two, the fifth is 3, the sixth is 5, etc. The Xth fibonacci number is the sum of the X-1th fibonacci number and the X-2th fibonacci number.
    */
    
    @IBOutlet weak var inputNumber: UITextField!
    @IBOutlet weak var outputResult: UILabel!
    
    @IBAction func findNthFibNumber(sender: AnyObject) {
        let fibAdder = FibonacciAdder()
        let result = fibAdder.fibonacciNumberAtIndex(Int(inputNumber.text!)!)
        outputResult.text = "\(result)"
    }
    
    class FibonacciAdder {
        func fibonacciNumberAtIndex(i: Int) -> Int {
            if i <= 2 {
                return 1
            } else {
                return fibonacciNumberAtIndex(i - 1) + fibonacciNumberAtIndex(i - 2)
            }
        }
    }
}