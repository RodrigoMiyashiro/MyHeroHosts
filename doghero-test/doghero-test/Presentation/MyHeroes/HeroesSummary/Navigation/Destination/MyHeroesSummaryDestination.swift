import UIKit

class MyHeroesSummaryDestination: Destination {
    private var createdViewController: UIViewController?

    var viewController: UIViewController {
        get {
            if let existingViewController = self.createdViewController {
                return existingViewController
            }

            let destination = self.destinationBuilder()
            let screen = destination.viewController

            return screen
        }
    }
}
