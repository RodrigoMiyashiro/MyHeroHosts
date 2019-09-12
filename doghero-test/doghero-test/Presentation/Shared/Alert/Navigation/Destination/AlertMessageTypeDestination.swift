import UIKit

class AlertMessageTypeDestination: Destination {
    private var title: String
    private var message: String
    private var buttonTitle: String

    var viewController: UIViewController {
        let alertController = UIAlertController(title: self.title,
                                                message: self.message,
                                                preferredStyle: .alert)
        let actionButton = UIAlertAction(title: self.buttonTitle,
                                         style: .default,
                                         handler: nil)

        alertController.addAction(actionButton)

        return alertController
    }

    init(title: String, message: String, buttonTitle: String) {
        self.title = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
}
