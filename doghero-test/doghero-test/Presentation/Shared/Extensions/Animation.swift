import UIKit

extension UIView {
    func springAnimation() {
        let duration: Double = 0.6
        let delay: Double = 0.0
        let damping: CGFloat = 0.2
        let velocity: CGFloat = 6.0

        UIView.animate(withDuration: duration,
                       delay: delay,
                       usingSpringWithDamping: damping,
                       initialSpringVelocity: velocity,
                       options: .allowUserInteraction,
                       animations: {
            self.transform = CGAffineTransform(scaleX: 1.6, y: 1.6)
        }) { _ in
            self.transform = CGAffineTransform.identity
        }
    }
}
