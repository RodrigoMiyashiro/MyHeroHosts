import UIKit

extension UIViewController {
    var navigator: Navigator? {
        get {
            return (UIApplication.shared.delegate as? AppDelegate)?.navigator
        }
    }
}
