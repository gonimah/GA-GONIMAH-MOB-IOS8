import UIKit

class FourthViewController: UIViewController {
    @IBOutlet weak var displayTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        do {
            let output = try String(contentsOfURL: getUrlForDocument("vc3_contents.txt"))
            displayTextView.text = output
        } catch {
            print("problem reading content from vc3_contents.txt")
        }
    }
    
    func getUrlForDocument(documentName: String) -> NSURL{
        let fileMgr = NSFileManager.defaultManager()
        let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let directory = urls.first!
        return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
    }
}
