//
//  ContentView.swift
//  FormValidation
//
//  Created by Ajay Kumar on 28/09/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var password: String = ""
    @State private var email: String = ""
    
    var isFormValid: Bool{
        return !email.isEmpty && !password.isEmpty && email.isValidEmail
    }
    
    var body: some View {
        Form{
            TextField("Enter Email", text: $email)
            SecureField("Enter Password", text: $password)
            Button("Login"){
                
            }.disabled(!isFormValid)
        }
    }
}


#Preview {
    ContentView()
}
