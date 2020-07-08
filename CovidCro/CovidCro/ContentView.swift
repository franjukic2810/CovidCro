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
        NavigationView {
            ScrollView {
                VStack {
                    
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
                    .background(Color("card3"))
                    .cornerRadius(15)
                    .shadow(color: Color("card3"),radius: 10)
                    
                    Spacer()
                        .frame(height: 40)
                    
                    VStack(alignment: .leading) {
                        Text("MJERE OPREZA")
                            .font(.title)
                            .bold()
                        
                        Spacer()
                            .frame(height: 10)
                        
                        Text("Distanca od 2 metra")
                        Text("Pranje ruku")
                        Text("Nošenje maske")
                    }
                    .frame(width: 300,height: 300)
                    .background(Color("card3"))
                    .cornerRadius(15)
                    .shadow(color: Color("card3"),radius: 10)
                }
                .padding()
            }
           .navigationBarTitle(Text("Danas u Hrvatskoj"))
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
