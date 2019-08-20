class MyHeroesProviderMockFailure: MyHeroesProvider {
    var callsToAvailableMyHeroesSummary = 0

    func myHeroes() throws -> ListMyHeroes? {
        self.callsToAvailableMyHeroesSummary += 1

        throw MyHeroesProviderError.errorObtainingMyHeroes
    }
}
