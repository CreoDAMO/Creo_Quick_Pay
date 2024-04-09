import Foundation

struct APIManager {
    static let shared = APIManager()
    private let baseURL = "https://your-backend-api.com" // Replace with your actual backend API URL

    private init() {}

    // Example function to fetch data from the backend
    func fetchData(endpoint: String, completion: @escaping (Result<Data, Error>) -> Void) {
        guard let url = URL(string: "\(baseURL)/\(endpoint)") else {
            completion(.failure(URLError(.badURL)))
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                completion(.failure(error))
                return
            }

            guard let data = data else {
                completion(.failure(URLError(.cannotParseResponse)))
                return
            }

            completion(.success(data))
        }.resume()
    }

    // Add more functions for other API interactions
}
