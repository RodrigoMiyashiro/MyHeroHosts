import UIKit

class AlertMessageDestination: Destination {
    private var createdViewController: UIViewController?
    private var title: String
    private var message: String
    private var buttonTitle: String

    var viewController: UIViewController {
        if let existingViewController = self.createdViewController {
            return existingViewController
        }

        let destination = self.destinationBuilder(title: self.title,
                                                  message: self.message,
                                                  buttonTitle: self.buttonTitle)
        guard let screen = destination.viewController as? UIAlertController else {
            return UIViewController()
        }

        return screen
    }

    init(title: String, message: String, buttonTitle: String) {
        self.title = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
}
