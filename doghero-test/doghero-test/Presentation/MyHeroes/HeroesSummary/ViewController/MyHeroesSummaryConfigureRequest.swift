import Foundation

extension MyHeroesSummaryViewController {
    internal func initialRequest() {
        self.startActivityIndicator()
        self.startRequest()
    }

    internal func startRequest() {
        let executor = DefaultListMyHeroesSummaryExecutor()

        self.presenter = MyHeroesSummaryPresenter(screen: self,
                                                  executor: executor)
        self.presenter?.retrieveListMyHeroesSummary()
    }
}
