//
//  ContentView.swift
//  FirstApp
//
//  Created by Ajay Kumar on 30/07/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack() {
            Text("First")
                .foregroundColor(.red)
            Text("Second")
            Text("Third")
        }
        .padding(5)
        Spacer(minLength: 5)
        HStack{
            Text("third")
            Text("Four")
        }
        .foregroundColor(.cyan)
        
        .padding()
    }
}

#Preview {
    ContentView()
}
