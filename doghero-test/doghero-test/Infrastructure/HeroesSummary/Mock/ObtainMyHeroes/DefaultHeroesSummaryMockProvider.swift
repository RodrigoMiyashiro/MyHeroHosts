class DefaultHerosSummaryMockProvider: MyHeroesProvider {
    private let parseMock: MyHeroesAPIMockable

    init(parseMock: MyHeroesAPIMockable) {
        self.parseMock = parseMock
    }

    func myHeroes() throws -> ListMyHeroes? {
        guard let listMyHeroes = self.parseMock.apiMyHeroes else {
            throw MyHeroesProviderError.errorObtainingMyHeroes
        }

        return listMyHeroes
    }
}
