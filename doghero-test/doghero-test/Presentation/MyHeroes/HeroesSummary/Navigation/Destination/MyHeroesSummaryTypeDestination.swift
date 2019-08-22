import UIKit

class MyHeroesSummaryTypeDestination: Destination {
    var viewController: UIViewController {
        get {
            return self.initialViewController(ofStoryboard: "MyHeroesSummaryStoryboard")
        }
    }
}
