import Foundation

class MyHeroesSummaryPresenter {
    unowned let screen: MyHeroesSummaryShowScreen
    unowned let executor: ObtainListMyHeroesSummaryExecutor

    init(screen: MyHeroesSummaryShowScreen, executor: ObtainListMyHeroesSummaryExecutor) {
        self.screen = screen
        self.executor = executor
    }

    func retrieveListMyHeroesSummary() {
        do {
            let listMyHeroes = try self.executor.obtainListMyHeroesSummary()

            self.screen.displayableListMyHeroes(listMyHeroes)
        } catch {
            self.screen.showErrorObtainingListMyHeroes()
        }
    }
}
