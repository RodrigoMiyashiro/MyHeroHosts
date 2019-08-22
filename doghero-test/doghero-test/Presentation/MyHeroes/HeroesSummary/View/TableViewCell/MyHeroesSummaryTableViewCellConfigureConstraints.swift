import UIKit

private let fourConstraintValeu: CGFloat = 4.0
private let minusEightConstraintValue: CGFloat = -8.0
private let eightConstraintValue: CGFloat = 8.0
private let twelveConstraintValeu: CGFloat = 12.0
private let sixteenConstraintValeu: CGFloat = 16.0
private let minusSixteenConstraintValeu: CGFloat = -16.0
private let twentyFourConstraintValue: CGFloat = 24.0
private let fourtyConstraintValeu: CGFloat = 40.0
private let sixtyFourConstraintValue: CGFloat = 64.0

private let sevenHundredFiftyHuggingPriority: Float = 750

extension MyHeroesSummaryTableViewCell {
    internal func constraintsForUserPhoto() {
        self.userPhotoMyHeroImage.topAnchor.constraint(equalTo: self.topAnchor,
                                                       constant: sixteenConstraintValeu).isActive = true
        self.userPhotoMyHeroImage.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                           constant: sixteenConstraintValeu).isActive = true
        self.userPhotoMyHeroImage.widthAnchor.constraint(equalToConstant: sixtyFourConstraintValue).isActive = true
        self.userPhotoMyHeroImage.heightAnchor.constraint(equalToConstant: sixtyFourConstraintValue).isActive = true
    }

    internal func constraintsForIconSuperHero() {
        self.iconForSuperHeroImage.trailingAnchor.constraint(equalTo: self.userPhotoMyHeroImage.trailingAnchor,
                                                             constant: eightConstraintValue).isActive = true
        self.iconForSuperHeroImage.bottomAnchor.constraint(equalTo: self.userPhotoMyHeroImage.bottomAnchor).isActive = true
        self.iconForSuperHeroImage.widthAnchor.constraint(equalToConstant: twentyFourConstraintValue).isActive = true
        self.iconForSuperHeroImage.widthAnchor.constraint(equalToConstant: twentyFourConstraintValue).isActive = true
    }

    internal func constraintsForUserName() {
        self.userNameMyHeroLable.topAnchor.constraint(equalTo: self.userPhotoMyHeroImage.topAnchor).isActive = true
        self.userNameMyHeroLable.leadingAnchor.constraint(equalTo: self.userPhotoMyHeroImage.trailingAnchor,
                                                          constant: twelveConstraintValeu).isActive = true
    }

    internal func constraintsForUserAddress() {
        self.userAddressMyHeroLabel.leadingAnchor.constraint(equalTo: self.userNameMyHeroLable.leadingAnchor).isActive = true
        self.userAddressMyHeroLabel.trailingAnchor.constraint(equalTo: self.userNameMyHeroLable.trailingAnchor).isActive = true
        self.userAddressMyHeroLabel.topAnchor.constraint(equalTo: self.userNameMyHeroLable.bottomAnchor,
                                                         constant: fourConstraintValeu).isActive = true
    }

    internal func constraintsForIconFavorite() {
        self.favoriteMyHeroImage.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                           constant: minusSixteenConstraintValeu).isActive = true
        self.favoriteMyHeroImage.topAnchor.constraint(equalTo: self.userNameMyHeroLable.topAnchor).isActive = true
        self.favoriteMyHeroImage.widthAnchor.constraint(equalToConstant: twentyFourConstraintValue).isActive = true
        self.favoriteMyHeroImage.heightAnchor.constraint(equalToConstant: twentyFourConstraintValue).isActive = true
    }

    internal func constraintsForPrice() {
        self.priceMyHeroLabel.trailingAnchor.constraint(equalTo: self.favoriteMyHeroImage.trailingAnchor).isActive = true
        self.priceMyHeroLabel.topAnchor.constraint(equalTo: self.favoriteMyHeroImage.bottomAnchor,
                                                   constant: eightConstraintValue).isActive = true
        self.priceMyHeroLabel.leadingAnchor.constraint(equalTo: self.userNameMyHeroLable.trailingAnchor,
                                                       constant: twelveConstraintValeu).isActive = true
        self.priceMyHeroLabel.setContentHuggingPriority(UILayoutPriority(rawValue: sevenHundredFiftyHuggingPriority),
                                                        for: .horizontal)
    }

    internal func constraintsForInfoPeriod() {
        self.infoPeriodMyHeroLabel.trailingAnchor.constraint(equalTo: self.priceMyHeroLabel.trailingAnchor).isActive = true
        self.infoPeriodMyHeroLabel.topAnchor.constraint(equalTo: self.priceMyHeroLabel.bottomAnchor).isActive = true
    }

    internal func constraintsForButtonTalk() {
        self.talkWithMyHeroButton.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                                           constant: eightConstraintValue).isActive = true
        self.talkWithMyHeroButton.topAnchor.constraint(equalTo: self.userPhotoMyHeroImage.bottomAnchor,
                                                       constant: twentyFourConstraintValue).isActive = true
        self.talkWithMyHeroButton.heightAnchor.constraint(equalToConstant: fourtyConstraintValeu).isActive = true
        self.talkWithMyHeroButton.bottomAnchor.constraint(equalTo: self.bottomAnchor,
                                                          constant: minusSixteenConstraintValeu).isActive = true
    }

    internal func constraintsForButtonBookAgain() {
        self.bookAgainButton.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                       constant: minusEightConstraintValue).isActive = true
        self.bookAgainButton.leadingAnchor.constraint(equalTo: self.talkWithMyHeroButton.trailingAnchor,
                                                      constant: eightConstraintValue).isActive = true
        self.bookAgainButton.centerYAnchor.constraint(equalTo: self.talkWithMyHeroButton.centerYAnchor).isActive = true
        self.bookAgainButton.heightAnchor.constraint(equalTo: self.talkWithMyHeroButton.heightAnchor).isActive = true
        self.bookAgainButton.widthAnchor.constraint(equalTo: self.talkWithMyHeroButton.widthAnchor).isActive = true
    }
}
