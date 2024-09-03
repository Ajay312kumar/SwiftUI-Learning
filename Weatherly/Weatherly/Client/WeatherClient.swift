import Foundation



struct WeatherClient {
    
    func fetchWeather(location: Location) async throws -> Weather? {
        // Create the URL using the API endpoint
        let url = APIEndPoint.endPointUrl(for: .weatherByLatLong(location.lat, location.lon))
        
        // Fetch data from the URL
        let (data, response) = try await URLSession.shared.data(from: url)
        
        // Check if the response is valid (HTTP status code 200)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw NetworkError.invalidResponse
        }
        
        // Decode the JSON data into a WeatherResponse object
        let weatherResponse = try JSONDecoder().decode(WeatherResponse.self, from: data)
        
        // Return the main weather information from the response
        return weatherResponse.main
    }
}
