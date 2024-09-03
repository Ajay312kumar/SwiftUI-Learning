//
//  WebServices.swift
//  MVVMWithSwiftUI
//
//  Created by Ajay Kumar on 03/09/24.
//

import Foundation

enum NetworkError: Error{
    
    case badURL
    case badResponse
    case decodinError
}


class WebServices{
    
    func getProduct() async throws -> [Product]{
        
        guard let url = URL(string: "https://fakestoreapi.com/products") else{
            throw NetworkError.badURL
        }
        
        let (data, reponse) = try await URLSession.shared.data(from: url)
        
        guard let reponseHTTP = reponse as? HTTPURLResponse,
              reponseHTTP.statusCode == 200 else{
            throw NetworkError.badResponse
        }
        
        guard let products = try? JSONDecoder().decode([Product].self, from: data) else{
            throw NetworkError.decodinError
        }
        
        return products
    }
}
