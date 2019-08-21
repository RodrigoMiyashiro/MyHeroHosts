extension ListMyHeroes {
    static var validListMyHeroes: ListMyHeroes? {
        let myHeroes = MyHeroes()
        return myHeroes.apiMyHeroes
    }
}
