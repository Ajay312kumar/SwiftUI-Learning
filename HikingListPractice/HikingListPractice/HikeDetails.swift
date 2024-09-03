//
//  HikeDetails.swift
//  HikingListPractice
//
//  Created by Ajay Kumar on 03/08/24.
//

import SwiftUI

struct HikeDetails: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    var body: some View {
        VStack{
            Image(hike.image)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill: .fit)
                .onTapGesture {
                    withAnimation(){
                        zoomed.toggle()
                    }
                }
            Text(hike.name)
                .font(.title)
            Text("\(hike.miles.formatted()) miles")
            Spacer()
        }.navigationTitle(hike.name)
            .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    NavigationStack{
        HikeDetails(hike: Hike(name: "John Doe", miles: 5.0, image: "Hike1"))
    }
}
