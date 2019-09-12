import UIKit

extension Double {
    var formatPrice: NSMutableAttributedString {
        let attributeForRegularFont = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16.0)]
        let atrributeForBoldFont = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 16.0)]
        let attributedText = NSMutableAttributedString(string: "R$", attributes: attributeForRegularFont)
        attributedText.append(NSAttributedString(string: self.priceValue ?? "", attributes: atrributeForBoldFont))

        return attributedText
    }

    private var priceValue: String? {
        let formatter = NumberFormatter()
        formatter.locale = Locale(identifier: "pt_BR")
        formatter.usesGroupingSeparator = true
        formatter.minimumFractionDigits = 0
        formatter.maximumFractionDigits = 2
        return formatter.string(from: self as NSNumber)
    }
}
