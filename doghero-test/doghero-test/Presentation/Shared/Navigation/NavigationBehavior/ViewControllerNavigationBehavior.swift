import UIKit

extension UIViewController {
    var navigator: Navigator? {
        return (UIApplication.shared.delegate as? AppDelegate)?.navigator
    }
}
