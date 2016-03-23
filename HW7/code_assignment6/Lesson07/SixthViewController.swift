import UIKit

class SixthViewController: UIViewController {
    @IBOutlet weak var outputDisplayView: UITextView!
    var data : [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let arrayToRead = NSArray(contentsOfURL: getUrlForDocument("data.plist"))
        
        self.data = arrayToRead as! [String]
        let stringRepresentation = data.joinWithSeparator(" ")
        outputDisplayView.text = stringRepresentation
    }
    
    func getUrlForDocument(documentName: String) -> NSURL{
        let fileMgr = NSFileManager.defaultManager()
        let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let directory = urls.first!
        return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
    }
}
