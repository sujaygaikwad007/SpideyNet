import Foundation
public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case patch = "PATCH"
    case delete = "DELETE"
}

public enum NetworkError: Error,LocalizedError{
    case invalidURL
    case invalidResponse
    case noData
    case decodingError
    case custom(String)
    
    public var errorDescription: String?{
        switch self{
        case .invalidURL: return "Invalid URL"
        case .invalidResponse: return "Invalid response from server"
        case .noData: return "No data received"
        case .decodingError: return "Failed to decode data"
        case .custom(let message): return message
            
        }
    }
}
