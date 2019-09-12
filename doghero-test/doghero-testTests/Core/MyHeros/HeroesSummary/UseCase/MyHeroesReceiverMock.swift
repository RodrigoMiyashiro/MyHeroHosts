class MyHeroesReceiverMock: MyHeroesReceiver {
    var callsToReceiverMyHeroesSummary = 0
    var callsToHandleErrorObtainingMyHeroes = 0

    var obtainListMyHeroes: ListMyHeroes?

    func receiverMyHeroes(_ listMyHeroes: ListMyHeroes?) {
        self.callsToReceiverMyHeroesSummary += 1

        self.obtainListMyHeroes = listMyHeroes
    }

    func handleErrorObtainingMyHeroes() {
        self.callsToHandleErrorObtainingMyHeroes += 1
    }
}
