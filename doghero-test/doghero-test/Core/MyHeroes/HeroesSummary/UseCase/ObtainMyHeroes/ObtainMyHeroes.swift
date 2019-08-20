class ObtainMyHeroes: UseCase {
    private let provider: MyHeroesProvider
    private weak var receiver: MyHeroesReceiver?

    init(provider: MyHeroesProvider, receiver: MyHeroesReceiver) {
        self.provider = provider
        self.receiver = receiver
    }

    func execute() {
        do {
            let myHeroes = try self.provider.myHeroes()

            self.receiver?.receiverMyHeroes(myHeroes)
        } catch {
            self.receiver?.handleErrorObtainingMyHeroes()
        }
    }
}
