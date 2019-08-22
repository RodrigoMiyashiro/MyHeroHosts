import UIKit

extension Destination {
    func initialViewController(ofStoryboard storyboardName: String) -> UIViewController {
        let storyboard = UIStoryboard(name: storyboardName, bundle: nil)
        guard let initialViewController = storyboard.instantiateInitialViewController() else {
            return UIViewController()
        }

        return initialViewController
    }
}
