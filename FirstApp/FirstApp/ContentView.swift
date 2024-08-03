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
            Image("doggy")
                  .resizable()
                  .frame(width: 100, height: 100)
                  .foregroundColor(.white)
                  .clipShape(Circle())
            AsyncImage(url: URL(string: "https://www.sticklerproofreading.com/wp-content/uploads/2017/02/dog-using-laptop-computer-e1487627703339.jpg")) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .clipShape(Rectangle())
                        .frame(width: 300, height: 300)
                } else if phase.error != nil {
                    Text("Failed to load image")
                } else {
                    ProgressView("Downloading...")
                }
            }

                
        }
        HStack{
            Text("third")
            Text("Four")
        }
        .foregroundColor(.cyan)
    }
}

#Preview {
    ContentView()
}
