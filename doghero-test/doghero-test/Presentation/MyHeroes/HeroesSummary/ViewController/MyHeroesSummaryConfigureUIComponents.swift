import UIKit

extension MyHeroesSummaryViewController {
    internal func configureTableView() {
        self.myHeroesTableView.dataSource = self.dataSourceDelegateForMyHeroesTableView
        self.myHeroesTableView.delegate = self.dataSourceDelegateForMyHeroesTableView
        self.myHeroesTableView.tableFooterView = UIView()
    }

    internal func registerNibs() {
        self.myHeroesTableView.register(MyHeroesSummaryTableViewCell.self,
                                        forCellReuseIdentifier: MyHeroesSummaryTableViewCell.identifier)
    }
}
