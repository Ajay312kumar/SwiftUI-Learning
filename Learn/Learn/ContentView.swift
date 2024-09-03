//
//  ContentView.swift
//  Learn
//
//  Created by Ajay Kumar on 21/08/24.
//

import SwiftUI

struct LightBlueView: View{
    
    @Binding var isOn: Bool
    
    var body: some View{
        VStack{
            Image(systemName: isOn ? "lightbulb.fill" : "lightbulb")
                .foregroundColor(isOn ? .yellow: .black
                )
            Button(action: {
                isOn.toggle()
            }, label: {
                Text("Toggle")
            })
        }
    }
}



struct ContentView: View {
    
    @State var isLightOn: Bool = false
    
    var body: some View {
        VStack{
            LightBlueView(isOn: $isLightOn)
        }
        .padding()
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight:  /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(isLightOn ? .red: .white)
    }
}
#Preview {
    ContentView()
}
