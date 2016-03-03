import UIKit

class Exercise3ViewController: UIViewController {
    // added outlet to the view which is added to my scroll view via storyboard
    @IBOutlet weak var backgroundView: UIView!
    let blueView = UIView()
    let purpleView = UIView()
    let redView = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        showBlueView()
        showPurpleView()
        //add a white label on the purple view
        showRedView()
    }
    
    func showBlueView() {
        blueView.backgroundColor = UIColor.blueColor()
        blueView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.addSubview(blueView)
        
        let horizontalConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: backgroundView, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 0)
        backgroundView.addConstraint(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: backgroundView, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: 0)
        backgroundView.addConstraint(verticalConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: backgroundView, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        backgroundView.addConstraint(widthConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: blueView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 10)
        backgroundView.addConstraint(heightConstraint)
    }
    
    func showPurpleView() {
        purpleView.backgroundColor = UIColor.purpleColor()
        purpleView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.addSubview(purpleView)
        
        let horizontalConstraint = NSLayoutConstraint(item: purpleView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: backgroundView, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 0)
        backgroundView.addConstraint(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint(item: purpleView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: blueView, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 10)
        backgroundView.addConstraint(verticalConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: purpleView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: backgroundView, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        backgroundView.addConstraint(widthConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: purpleView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 1000)
        backgroundView.addConstraint(heightConstraint)
    }
    
    func showRedView() {
        redView.backgroundColor = UIColor.redColor()
        redView.translatesAutoresizingMaskIntoConstraints = false
        backgroundView.addSubview(redView)
        
        let horizontalConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: backgroundView, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 0)
        backgroundView.addConstraint(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: purpleView, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 10)
        backgroundView.addConstraint(verticalConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: backgroundView, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        backgroundView.addConstraint(widthConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 10)
        backgroundView.addConstraint(heightConstraint)
        
    }
}
