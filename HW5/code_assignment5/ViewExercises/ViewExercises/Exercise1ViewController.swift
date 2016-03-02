import UIKit

class Exercise1ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        showRedView()
        showBlackView()
        edgesForExtendedLayout = .None
        navigationController?.navigationBar.translucent = false
    }
    
    func showRedView() {
        let redView = UIView()
        redView.backgroundColor = UIColor.redColor()
        redView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(redView)
        
        // redView leading pos is equal to the leading pos of my parent home view
        let horizontalConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 0)
        view.addConstraint(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: 0)
        view.addConstraint(verticalConstraint)
        
        // redView is as wide as my parent/home view
        let widthConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        view.addConstraint(widthConstraint)
        
        // 10 points tall
        let heightConstraint = NSLayoutConstraint(item: redView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 10)
        view.addConstraint(heightConstraint)
    }
    
    func showBlackView() {
        let blackView = UIView()
        blackView.backgroundColor = UIColor.blackColor()
        blackView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(blackView)
        
        // redView leading pos is equal to the leading pos of my parent home view
        let horizontalConstraint = NSLayoutConstraint(item: blackView, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 0)
        view.addConstraint(horizontalConstraint)

        let verticalConstraint = NSLayoutConstraint(item: blackView, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0)
        view.addConstraint(verticalConstraint)
        
        // redView is as wide as my parent/home view
        let widthConstraint = NSLayoutConstraint(item: blackView, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Width, multiplier: 1, constant: 0)
        view.addConstraint(widthConstraint)
        
        // 10 points tall
        let heightConstraint = NSLayoutConstraint(item: blackView, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 10)
        view.addConstraint(heightConstraint)
    }
}
