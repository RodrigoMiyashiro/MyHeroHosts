import Foundation

class DefaultListMyHeroesSummaryExecutor: ObtainListMyHeroesSummaryExecutor, MyHeroesReceiver {
    private var isSuccess = false
    private var obtainedListMyHeroes: ListMyHeroes?

    func obtainListMyHeroesSummary() throws -> ListMyHeroes? {
        let parseMock = MyHeroes()
        let provider = DefaultHerosSummaryMockProvider(parseMock: parseMock)
        let obtainListMyHeroesSummary = ObtainMyHeroes(provider: provider,
                                                       receiver: self)

        obtainListMyHeroesSummary.execute()

        guard let obtainedListMyHeroes = self.obtainedListMyHeroes, self.isSuccess else {
            throw ObtainListMyHeroesSummaryExecutorError.errorObtainingListMyHeroesSummary
        }

        return obtainedListMyHeroes
    }

    func receiverMyHeroes(_ listMyHeroes: ListMyHeroes?) {
        self.obtainedListMyHeroes = listMyHeroes

        self.resumeExecution(success: true)
    }

    func handleErrorObtainingMyHeroes() {
        self.resumeExecution(success: false)
    }

    private func resumeExecution(success: Bool) {
        self.isSuccess = success
    }
}
