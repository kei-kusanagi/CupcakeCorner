//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Juan Carlos Robledo Morales on 08/10/24.
//

import SwiftUI

struct ContentView: View {
    @State private var username = ""
    @State private var email = ""
    
    var disableForm: Bool {
        username.count < 5 || email.count < 5
    }

    var body: some View {
        Form {
            Section {
                TextField("Username", text: $username)
                TextField("Email", text: $email)
            }

            Section {
                Button("Create account") {
                    print("Creating account…")
                }
            }
//            .disabled(username.isEmpty || email.isEmpty)
            .disabled(disableForm)
        }
    }
}

#Preview {
    ContentView()
}
