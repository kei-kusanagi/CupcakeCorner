//
//  ContentView.swift
//  CupcakeCorner
//
//  Created by Juan Carlos Robledo Morales on 08/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            AsyncImage(url: URL(string: "https://hws.dev/img/logo.png")) { image in
                image
                    .resizable()
                    .scaledToFit()
            } placeholder: {
                ProgressView()
            }
            .frame(width: 200, height: 200)
            AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/en/8/89/Armored_Core_VI_Fires_of_Rubicon_cover.jpg")) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                } else if phase.error != nil {
                    Text("Hubo un error al cargar la imagen.")
                } else {
                    ProgressView()
                }
            }
            .frame(width: 200, height: 200)
            AsyncImage(url: URL(string: "https://upload.wikimedia.org/wikipedia/en/8/89/Armored_Core_VI_Fires_of_Rubicon_cover_art.jpg")) { phase in
                if let image = phase.image {
                    image
                        .resizable()
                        .scaledToFit()
                } else if phase.error != nil {
                    Text("Hubo un error al cargar la imagen.")
                } else {
                    ProgressView()
                }
            }
            .frame(width: 200, height: 200)


        }
        .padding()
    }
}

#Preview {
    ContentView()
}
