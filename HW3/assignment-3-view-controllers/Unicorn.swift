
import UIKit

class Unicorn: Animal {
    override func prettyAnimalName() -> String {
        return "I'm actually a unicorn: " + self.name
    }
}