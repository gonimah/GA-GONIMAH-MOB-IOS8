import UIKit

class Exercise2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        showTopLeftCorner()
        showTopRightCorner()
        showBottemLeftCorner()
        showBottomRightCorner()
    }
    
    func showTopLeftCorner() {
        let topLeftCorner = UIView()
        topLeftCorner.backgroundColor = UIColor.blueColor()
        topLeftCorner.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topLeftCorner)
        
        let horizontalConstraint = NSLayoutConstraint(item: topLeftCorner, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 0)
        view.addConstraint(horizontalConstraint)
        
        // TODO fix me; make me relative to the nav bar
        let verticalConstraint = NSLayoutConstraint(item: topLeftCorner, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: 65)
        view.addConstraint(verticalConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: topLeftCorner, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        view.addConstraint(widthConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: topLeftCorner, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        view.addConstraint(heightConstraint)
    }
    
    func showTopRightCorner() {
        let topRightCorner = UIView()
        topRightCorner.backgroundColor = UIColor.blueColor()
        topRightCorner.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(topRightCorner)
        
        let horizontalConstraint = NSLayoutConstraint(item: topRightCorner, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Trailing, multiplier: 1, constant: 0)
        view.addConstraint(horizontalConstraint)
        
        // TODO fix me; make me relative to the nav bar
        let verticalConstraint = NSLayoutConstraint(item: topRightCorner, attribute: NSLayoutAttribute.Top, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Top, multiplier: 1, constant: 65)
        view.addConstraint(verticalConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: topRightCorner, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        view.addConstraint(widthConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: topRightCorner, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        view.addConstraint(heightConstraint)
    }
    
    func showBottemLeftCorner() {
        let bottomLeftCorner = UIView()
        bottomLeftCorner.backgroundColor = UIColor.blueColor()
        bottomLeftCorner.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomLeftCorner)
        
        let horizontalConstraint = NSLayoutConstraint(item: bottomLeftCorner, attribute: NSLayoutAttribute.Leading, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Leading, multiplier: 1, constant: 0)
        view.addConstraint(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint(item: bottomLeftCorner, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0)
        view.addConstraint(verticalConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: bottomLeftCorner, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        view.addConstraint(widthConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: bottomLeftCorner, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        view.addConstraint(heightConstraint)
    }
    
    func showBottomRightCorner() {
        let bottomRightCorner = UIView()
        bottomRightCorner.backgroundColor = UIColor.blueColor()
        bottomRightCorner.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomRightCorner)
        
        let horizontalConstraint = NSLayoutConstraint(item: bottomRightCorner, attribute: NSLayoutAttribute.Trailing, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Trailing, multiplier: 1, constant: 0)
        view.addConstraint(horizontalConstraint)
        
        let verticalConstraint = NSLayoutConstraint(item: bottomRightCorner, attribute: NSLayoutAttribute.Bottom, relatedBy: NSLayoutRelation.Equal, toItem: view, attribute: NSLayoutAttribute.Bottom, multiplier: 1, constant: 0)
        view.addConstraint(verticalConstraint)
        
        let widthConstraint = NSLayoutConstraint(item: bottomRightCorner, attribute: NSLayoutAttribute.Width, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        view.addConstraint(widthConstraint)
        
        let heightConstraint = NSLayoutConstraint(item: bottomRightCorner, attribute: NSLayoutAttribute.Height, relatedBy: NSLayoutRelation.Equal, toItem: nil, attribute: NSLayoutAttribute.NotAnAttribute, multiplier: 1, constant: 20)
        view.addConstraint(heightConstraint)
        
    }
}
