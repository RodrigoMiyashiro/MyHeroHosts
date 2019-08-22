import UIKit

class TableViewForMyHeroesSummary: NSObject, UITableViewDataSource, UITableViewDelegate {
    private let numberOfSectionsForListMyHeroes: Int = 2
    private let sectionForRecents: Int = 0
    private let sectionForFavorites: Int = 1
    private let zeroMyHeroesItems: Int = 0
    private let heightForHeaderTableView: CGFloat = 40.0

    var listMyHeroes: ListMyHeroes?

    func numberOfSections(in tableView: UITableView) -> Int {
        return self.numberOfSectionsForListMyHeroes
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let listMyHeroes = self.listMyHeroes else {
            return self.zeroMyHeroesItems
        }

        if section == self.sectionForRecents {
            return listMyHeroes.recents.count
        }

        if section == self.sectionForFavorites {
            return listMyHeroes.favorites.count
        }

        return self.zeroMyHeroesItems
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell: MyHeroesSummaryTableViewCell = self.configureCel(for: tableView,
                                                                         identifier: MyHeroesSummaryTableViewCell.identifier,
                                                                         indexPath: indexPath) else {
            return UITableViewCell()
        }

        guard let listMyHeroes = self.listMyHeroes else {
            return UITableViewCell()
        }

        let row = indexPath.row
        let section = indexPath.section

        if section == self.sectionForRecents {
            let recents = listMyHeroes.recents
            let recent = recents[row]
            cell.set(recent, isFavorited: false)
        }

        if section == self.sectionForFavorites {
            let recents = listMyHeroes.favorites
            let recent = recents[row]
            cell.set(recent, isFavorited: true)
        }

        return cell
    }

    private func configureCel<T>(for tableView: UITableView, identifier: String, indexPath: IndexPath) -> T? where T: UITableViewCell {
        return tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? T
    }

    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return self.heightForHeaderTableView
    }

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let frameTableView = tableView.frame

        let headerView = UIView.init(frame: CGRect(x: 0, y: 0, width: frameTableView.width, height: self.heightForHeaderTableView))
        headerView.backgroundColor = UIColor.grayForHeaderTableView

        let frameHeaderView = headerView.frame
        var label = UILabel()

        if section == self.sectionForRecents {
            label = self.createHeaderTitle("Heróis com quem hospedei", frame: frameHeaderView)
        }

        if section == self.sectionForFavorites {
            label = self.createHeaderTitle("Heróis favoritos", frame: frameHeaderView)
        }

        headerView.addSubview(label)

        return headerView
    }

    private func createHeaderTitle(_ title: String, frame: CGRect) -> UILabel {
        let fifteenSpace: CGFloat = 16.0
        let zeroPosition: CGFloat = 0.0

        let label = UILabel()
        label.frame = CGRect.init(x: fifteenSpace,
                                  y: zeroPosition,
                                  width: frame.width - fifteenSpace,
                                  height: frame.height)
        label.text = title
        label.font = UIFont.systemBold14
        label.textColor = UIColor.grayAlpha42

        return label
    }

    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
