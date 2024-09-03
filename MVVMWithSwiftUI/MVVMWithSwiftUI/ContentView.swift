//
//  ContentView.swift
//  MVVMWithSwiftUI
//
//  Created by Ajay Kumar on 03/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var vm = ProductListModel(webservices: WebServices())
    
    var body: some View {
        VStack {
            List(vm.products) {
                product in
                Text(product.title)
            }.task {
                await vm.populateProduct()
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
