struct Host: Codable {
    var id: Int64?
    var isSuperhero: Bool
    var user: User
    var addressNeighborhood: String
    var price: Double

    private enum CodingKeys: String, CodingKey {
        case id, user, price
        case isSuperhero = "is_superhero"
        case addressNeighborhood = "address_neighborhood"
    }
}
