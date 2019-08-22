import UIKit

extension UIColor {
    class var grayAlpha12: UIColor {
        return self.getColor(red: 0.0,
                             green: 0.0,
                             blue: 0.0,
                             alpha: 0.12)
    }

    class var grayAlpha42: UIColor {
        return self.getColor(red: 0.0,
                             green: 0.0,
                             blue: 0.0,
                             alpha: 0.42)
    }

    class var grayAlpha66: UIColor {
        return self.getColor(red: 0.0,
                             green: 0.0,
                             blue: 0.0,
                             alpha: 0.66)
    }

    class var grayForHeaderTableView: UIColor {
        return self.getColor(red: 218.0,
                             green: 218.0,
                             blue: 218.0,
                             alpha: 1.0)
    }

    class var redAlpha100: UIColor {
        return self.getColor(red: 239.0,
                             green: 58.0,
                             blue: 93.0,
                             alpha: 1.0)
    }

    private static func getColor(red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat) -> UIColor {
        let base: CGFloat = 255.0

        return UIColor(red: red/base,
                       green: green/base,
                       blue: blue/base,
                       alpha: alpha)
    }
}
