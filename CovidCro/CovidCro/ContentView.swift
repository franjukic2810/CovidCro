//
//  ContentView.swift
//  CovidCro
//
//  Created by Fran Jukic on 07/07/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("DANAS")
                .font(.title)
                .bold()
            Spacer()
                .frame(height: 10)
            
            Text("Slučajeva: 3.220")
            Text("Oporavljenih: 2.210")
            Text("Preminulih: 113")
        }
        .frame(width: 300,height: 300)
        .shadow(radius: 10)
        .background(Color.secondary.opacity(0.3))
        .cornerRadius(15)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
