//
//  ContentView.swift
//  HikingListPractice
//
//  Created by Ajay Kumar on 03/08/24.
//

import SwiftUI


struct ContentView: View {
    
    let hikes = [
        Hike(name: "John Doe", miles: 5.0, image: "Hike1"),
        Hike(name: "Ibrahim", miles: 5.0, image: "Hike2"),
        Hike(name: "David", miles: 5.0, image: "Hike3")
    ]
    
    var body: some View {
        NavigationStack {
            List(hikes) { hike in
                NavigationLink(value: hike) {
                    HikeCellView(hike: hike)
                }
            }
            .navigationTitle("Hikes")
            .navigationDestination(for: Hike.self) { hike in
                HikeDetails(hike: hike)
            }
        }
    }
}

#Preview {
    ContentView()
}

struct HikeCellView: View {
    
    let hike: Hike
    
    var body: some View {
        HStack(alignment: .top) {
            Image(hike.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 10.0, style: .continuous))
                .frame(width: 100)
            
            VStack {
                Text(hike.name)
                Text("\(hike.miles.formatted()) miles")
            }
        }
    }
}
