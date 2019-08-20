import Foundation

extension JSONParser {
    class func convert<T>(_ jsonString: String) throws -> T? where T: Decodable {
        guard let data = jsonString.data(using: .utf8) else {
            return nil
        }

        do {
            let decoder = JSONDecoder()
            return try decoder.decode(T.self, from: data)
        } catch {
            throw ErrorTest.parseError(error.localizedDescription)
        }
    }
}
