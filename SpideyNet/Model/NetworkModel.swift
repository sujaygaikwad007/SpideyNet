import Foundation
public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case patch = "PATCH"
    case delete = "DELETE"
}

public enum NetworkError: Error {
    case invalidResponse
    case requestFailed
    case decodingError
    case unknown
}
