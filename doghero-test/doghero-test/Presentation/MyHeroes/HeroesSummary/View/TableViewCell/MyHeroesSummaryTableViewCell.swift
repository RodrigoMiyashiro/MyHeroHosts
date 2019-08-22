import UIKit

class MyHeroesSummaryTableViewCell: UITableViewCell, CodeView, IdentifiableCell {
    internal let borderWidth: CGFloat = 1.0
    internal let radiusForButton: CGFloat = 5.0

    internal lazy var userPhotoMyHeroImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    internal lazy var iconForSuperHeroImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    internal lazy var userNameMyHeroLable: UILabel = {
        var label = UILabel()
        label.font = UIFont.systemBold18
        label.textColor = UIColor.grayAlpha66
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    internal lazy var userAddressMyHeroLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemRegular14
        label.textColor = UIColor.grayAlpha42
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    internal lazy var favoriteMyHeroImage: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    internal lazy var priceMyHeroLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.grayAlpha66
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    internal lazy var infoPeriodMyHeroLabel: UILabel = {
       let label = UILabel()
        label.text = "por noite"
        label.font = UIFont.systemRegular12
        label.textColor = UIColor.grayAlpha42
        label.textAlignment = .right
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    internal lazy var talkWithMyHeroButton: UIButton = {
        let button = UIButton()
        button.setTitle("Conversar", for: .normal)
        button.setTitleColor(UIColor.grayAlpha42, for: .normal)
        button.titleLabel?.font = UIFont.systemBold14
        button.cornerRadius(value: self.radiusForButton)
        button.borderColor(UIColor.grayAlpha12, width: self.borderWidth)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    internal lazy var bookAgainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Reservar de novo", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.font = UIFont.systemBold14
        button.cornerRadius(value: self.radiusForButton)
        button.backgroundColor = UIColor.redAlpha100
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        self.setup()
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupComponents() {
        self.addSubviewUIComponents()
        self.configureActionForFavoriteButton()
        self.configureSelectionStyle()
    }

    func setupConstraints() {
        self.constraintsForUserPhoto()
        self.constraintsForIconSuperHero()
        self.constraintsForUserName()
        self.constraintsForUserAddress()
        self.constraintsForIconFavorite()
        self.constraintsForPrice()
        self.constraintsForInfoPeriod()
        self.constraintsForButtonTalk()
        self.constraintsForButtonBookAgain()
    }

    private func addSubviewUIComponents() {
        self.addSubview(self.userPhotoMyHeroImage)
        self.addSubview(self.iconForSuperHeroImage)
        self.addSubview(self.userNameMyHeroLable)
        self.addSubview(self.userAddressMyHeroLabel)
        self.addSubview(self.favoriteMyHeroImage)
        self.addSubview(self.priceMyHeroLabel)
        self.addSubview(self.infoPeriodMyHeroLabel)
        self.addSubview(self.talkWithMyHeroButton)
        self.addSubview(self.bookAgainButton)
    }
}


