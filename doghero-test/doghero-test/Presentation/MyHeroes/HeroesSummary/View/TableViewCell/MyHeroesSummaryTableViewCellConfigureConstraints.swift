import UIKit

private let fourConstraintValue: CGFloat = 4.0
private let minusEightConstraintValue: CGFloat = -8.0
private let eightConstraintValue: CGFloat = 8.0
private let twelveConstraintValue: CGFloat = 12.0
private let sixteenConstraintValue: CGFloat = 16.0
private let minusSixteenConstraintValue: CGFloat = -16.0
private let twentyFourConstraintValue: CGFloat = 24.0
private let fourtyConstraintValue: CGFloat = 40.0
private let sixtyFourConstraintValue: CGFloat = 64.0

private let sevenHundredFiftyHuggingPriority: Float = 750

extension MyHeroesSummaryTableViewCell {
    internal func constraintsForUserPhoto() {
        let userPhoto = self.userPhotoMyHeroImage

        userPhoto.topAnchor.constraint(equalTo: self.topAnchor,
                                       constant: sixteenConstraintValue).isActive = true
        userPhoto.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                           constant: sixteenConstraintValue).isActive = true
        userPhoto.widthAnchor.constraint(equalToConstant: sixtyFourConstraintValue).isActive = true
        userPhoto.heightAnchor.constraint(equalToConstant: sixtyFourConstraintValue).isActive = true
    }

    internal func constraintsForIconSuperHero() {
        let iconSuperHero = self.iconForSuperHeroImage

        iconSuperHero.trailingAnchor.constraint(equalTo: self.userPhotoMyHeroImage.trailingAnchor,
                                                constant: eightConstraintValue).isActive = true
        iconSuperHero.bottomAnchor.constraint(equalTo: self.userPhotoMyHeroImage.bottomAnchor).isActive = true
        iconSuperHero.widthAnchor.constraint(equalToConstant: twentyFourConstraintValue).isActive = true
        iconSuperHero.widthAnchor.constraint(equalToConstant: twentyFourConstraintValue).isActive = true
    }

    internal func constraintsForUserName() {
        let userName = self.userNameMyHeroLable

        userName.topAnchor.constraint(equalTo: self.userPhotoMyHeroImage.topAnchor).isActive = true
        userName.leadingAnchor.constraint(equalTo: self.userPhotoMyHeroImage.trailingAnchor,
                                          constant: twelveConstraintValue).isActive = true
    }

    internal func constraintsForUserAddress() {
        let userAddress = self.userAddressMyHeroLabel

        userAddress.leadingAnchor.constraint(equalTo: self.userNameMyHeroLable.leadingAnchor).isActive = true
        userAddress.trailingAnchor.constraint(equalTo: self.userNameMyHeroLable.trailingAnchor).isActive = true
        userAddress.topAnchor.constraint(equalTo: self.userNameMyHeroLable.bottomAnchor,
                                         constant: fourConstraintValue).isActive = true
    }

    internal func constraintsForIconFavorite() {
        let favoriteImage = self.favoriteMyHeroImage

        favoriteImage.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                                constant: minusSixteenConstraintValue).isActive = true
        favoriteImage.topAnchor.constraint(equalTo: self.userNameMyHeroLable.topAnchor).isActive = true
        favoriteImage.widthAnchor.constraint(equalToConstant: twentyFourConstraintValue).isActive = true
        favoriteImage.heightAnchor.constraint(equalToConstant: twentyFourConstraintValue).isActive = true
    }

    internal func constraintsForPrice() {
        let priceLabel = self.priceMyHeroLabel

        priceLabel.trailingAnchor.constraint(equalTo: self.favoriteMyHeroImage.trailingAnchor).isActive = true
        priceLabel.topAnchor.constraint(equalTo: self.favoriteMyHeroImage.bottomAnchor,
                                        constant: eightConstraintValue).isActive = true
        priceLabel.leadingAnchor.constraint(equalTo: self.userNameMyHeroLable.trailingAnchor,
                                            constant: twelveConstraintValue).isActive = true
        priceLabel.setContentHuggingPriority(UILayoutPriority(rawValue: sevenHundredFiftyHuggingPriority),
                                             for: .horizontal)
    }

    internal func constraintsForInfoPeriod() {
        let infoPeriod = self.infoPeriodMyHeroLabel

        infoPeriod.trailingAnchor.constraint(equalTo: self.priceMyHeroLabel.trailingAnchor).isActive = true
        infoPeriod.topAnchor.constraint(equalTo: self.priceMyHeroLabel.bottomAnchor).isActive = true
    }

    internal func constraintsForButtonTalk() {
        let talkWithHero = self.talkWithMyHeroButton

        talkWithHero.leadingAnchor.constraint(equalTo: self.leadingAnchor,
                                              constant: eightConstraintValue).isActive = true
        talkWithHero.topAnchor.constraint(equalTo: self.userPhotoMyHeroImage.bottomAnchor,
                                          constant: twentyFourConstraintValue).isActive = true
        talkWithHero.heightAnchor.constraint(equalToConstant: fourtyConstraintValue).isActive = true
        talkWithHero.bottomAnchor.constraint(equalTo: self.bottomAnchor,
                                             constant: minusSixteenConstraintValue).isActive = true
    }

    internal func constraintsForButtonBookAgain() {
        let bookAgain = self.bookAgainButton

        bookAgain.trailingAnchor.constraint(equalTo: self.trailingAnchor,
                                            constant: minusEightConstraintValue).isActive = true
        bookAgain.leadingAnchor.constraint(equalTo: self.talkWithMyHeroButton.trailingAnchor,
                                           constant: eightConstraintValue).isActive = true
        bookAgain.centerYAnchor.constraint(equalTo: self.talkWithMyHeroButton.centerYAnchor).isActive = true
        bookAgain.heightAnchor.constraint(equalTo: self.talkWithMyHeroButton.heightAnchor).isActive = true
        bookAgain.widthAnchor.constraint(equalTo: self.talkWithMyHeroButton.widthAnchor).isActive = true
    }
}
