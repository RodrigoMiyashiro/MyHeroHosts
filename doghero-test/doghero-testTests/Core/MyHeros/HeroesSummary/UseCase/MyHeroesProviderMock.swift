class MyHeroesProviderMock: MyHeroesProvider {
    var callsToAvailableMyHeroesSummary = 0

    func myHeroes() throws -> ListMyHeroes? {
        self.callsToAvailableMyHeroesSummary += 1

        return ListMyHeroes.validListMyHeroes
    }
}
