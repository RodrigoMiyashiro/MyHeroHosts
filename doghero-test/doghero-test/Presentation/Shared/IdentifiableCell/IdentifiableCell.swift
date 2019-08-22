protocol IdentifiableCell: AnyObject { }

extension IdentifiableCell {
    static var identifier: String {
        return String(describing: self)
    }
}
