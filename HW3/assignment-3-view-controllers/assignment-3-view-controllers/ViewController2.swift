import UIKit

class ViewController2: UIViewController {

    @IBAction func dismissModal(sender: AnyObject) {
        self.dismissViewControllerAnimated(true, completion: {})
    }
}
