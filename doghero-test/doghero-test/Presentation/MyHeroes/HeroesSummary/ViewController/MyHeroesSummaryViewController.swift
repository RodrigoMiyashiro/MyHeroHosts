import UIKit

class MyHeroesSummaryViewController: BaseConfigurationViewController, MyHeroesSummaryShowScreen {
    internal var presenter: MyHeroesSummaryPresenter?
    internal var dataSourceDelegateForMyHeroesTableView = TableViewForMyHeroesSummary()

    internal var listMyHeroes: ListMyHeroes? {
        didSet {
            self.dataSourceDelegateForMyHeroesTableView.listMyHeroes = self.listMyHeroes
            self.myHeroesTableView.reloadData()
        }
    }

    @IBOutlet weak var myHeroesTableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()

        self.initializer()
        self.initialRequest()
    }

    private func initializer() {
        self.configureTitle("Meus Heróis")
        self.registerNibs()
        self.configureTableView()
    }

    func displayableListMyHeroes(_ listMyHeroes: ListMyHeroes?) {
        self.listMyHeroes = listMyHeroes
        self.stopActivityIndicator()
    }

    func showErrorObtainingListMyHeroes() {
        self.stopActivityIndicator()
    }
}
