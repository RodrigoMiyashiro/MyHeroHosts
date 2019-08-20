struct User: Codable {
    var firstName: String
    var imageURL: String

    private enum CodingKeys: String, CodingKey {
        case firstName = "first_name"
        case imageURL = "image_url"
    }
}
