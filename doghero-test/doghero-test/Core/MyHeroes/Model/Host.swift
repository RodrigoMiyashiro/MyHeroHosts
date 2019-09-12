struct Host: Codable {
    var identifier: Int64?
    var isSuperhero: Bool
    var user: User
    var addressNeighborhood: String
    var price: Double

    private enum CodingKeys: String, CodingKey {
        case identifier = "id"
        case user, price
        case isSuperhero = "is_superhero"
        case addressNeighborhood = "address_neighborhood"
    }
}
