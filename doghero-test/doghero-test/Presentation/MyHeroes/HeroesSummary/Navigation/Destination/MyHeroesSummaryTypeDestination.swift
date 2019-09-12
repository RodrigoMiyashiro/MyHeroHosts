import UIKit

class MyHeroesSummaryTypeDestination: Destination {
    var viewController: UIViewController {
        return self.initialViewController(ofStoryboard: "MyHeroesSummaryStoryboard")
    }
}
