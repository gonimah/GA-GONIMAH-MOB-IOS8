import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var inputTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func saveToFlatFile(sender: AnyObject) {
        let fileURL = getUrlForDocument("vc3_contents.txt")
        if let textToSave = inputTextView.text {
            do {
                try textToSave.writeToURL(fileURL, atomically: true, encoding: NSUTF8StringEncoding)
            } catch {
                print("problem encountered while writing to file vc3_contents.txt")
            }
        }
    }
    
    func getUrlForDocument(documentName: String) -> NSURL{
        let fileMgr = NSFileManager.defaultManager()
        let urls = fileMgr.URLsForDirectory(.DocumentDirectory, inDomains: .UserDomainMask)
        let directory = urls.first!
        return directory.URLByAppendingPathComponent(documentName, isDirectory: false)
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if (segue.identifier == "showFourthViewController") {
            saveToFlatFile(sender!)
        }
    }
}
