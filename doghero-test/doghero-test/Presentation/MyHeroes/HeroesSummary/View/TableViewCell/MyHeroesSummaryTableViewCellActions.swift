import UIKit

extension MyHeroesSummaryTableViewCell {
    internal func configureSelectionStyle() {
        self.selectionStyle = .none
    }

    internal func configureActionForFavoriteButton() {
        let tapGesture = UITapGestureRecognizer(target: self,
                                                action: #selector(self.changeFavoriteIcon))
        tapGesture.numberOfTapsRequired = 1

        self.favoriteMyHeroImage.addGestureRecognizer(tapGesture)
    }

    @objc private func changeFavoriteIcon() {
        var currentImage = UIImage(named: "icon_heart_unfilled")

        if self.favoriteMyHeroImage.image == currentImage {
            currentImage = UIImage(named: "icon_heart_filled")
        }

        self.favoriteMyHeroImage.image = currentImage
        self.favoriteMyHeroImage.springAnimation()
    }

    func set(_ host: Host, isFavorited: Bool) {
        let user = host.user
        self.userNameMyHeroLable.text = user.firstName
        self.userAddressMyHeroLabel.text = host.addressNeighborhood
        self.priceMyHeroLabel.attributedText = host.price.formatPrice
        self.infoPeriodMyHeroLabel.text = "por noite"

        self.loadUserPhoto(user.imageURL)
        self.iconForSuperHeroImage.image = self.superHeroIcon(host.isSuperhero)
        self.favoriteHero(isFavorited)
    }

    internal func loadUserPhoto(_ imageURL: String) {
        guard let url = URL(string: imageURL) else {
            return
        }

        self.layoutIfNeeded()
        self.userPhotoMyHeroImage.setImageFrom(url: url)
        self.userPhotoMyHeroImage.circularRadius()
    }

    internal func superHeroIcon(_ isSuperHero: Bool) -> UIImage? {
        if isSuperHero {
            return UIImage(named: "icon_superHero")
        }

        return nil
    }

    internal func favoriteHero(_ favorited: Bool) {
        var iconForFavoriteHero = UIImage(named: "icon_heart_unfilled")

        if favorited {
            iconForFavoriteHero = UIImage(named: "icon_heart_filled")
        }

        self.favoriteMyHeroImage.image = iconForFavoriteHero
    }
}
