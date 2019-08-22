import UIKit

protocol Navigator {
    func navigate(to destination: Destination, mode: NavigationMode)
    func navigate(to destination: Destination, mode: NavigationMode, effect: NavigationEffect)
    func set(current: UIViewController)
}
