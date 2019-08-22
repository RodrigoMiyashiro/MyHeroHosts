import UIKit

protocol CodeView {
    func setup()
    func setupComponents()
    func setupConstraints()
}

extension CodeView {
    func setup() {
        self.setupComponents()
        self.setupConstraints()
    }
}
