protocol MyHeroesReceiver: AnyObject {
    func receiverMyHeroes(_ listMyHeroes: ListMyHeroes?)

    func handleErrorObtainingMyHeroes()
}
