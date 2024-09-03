//
//  ProductListModel.swift
//  MVVMWithSwiftUI
//
//  Created by Ajay Kumar on 03/09/24.
//

import Foundation

@MainActor
class ProductListModel: ObservableObject{
    
    let webservices: WebServices
   @Published var products: [ProductViewModel] = []
    
    init(webservices: WebServices) {
        self.webservices = webservices
    }
    
    func populateProduct() async {
        do {
            let products = try await webservices.getProduct()
            self.products = products.map(ProductViewModel.init)
        }catch{
            print(error.localizedDescription)
        }
    }
    
}

struct ProductViewModel: Identifiable{
    
    private var product: Product
    
    init(product: Product) {
        self.product = product
    }
    
    var id: Int{
        product.id
    }
    
    var title: String{
        product.title
    }
    
    var price: Double{
        product.price
    }
    
}
