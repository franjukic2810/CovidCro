//
//  ContentView.swift
//  CovidCro
//
//  Created by Fran Jukic on 07/07/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var CardMove = false
    
    var body: some View {
        ScrollView(.vertical){
            HStack {
                Text("CovidCro")
                    .font(.system(size: 32))
                    .bold()
                           
                           Spacer()
            }
            .padding()
            .blur(radius: CardMove ? 20 : 0)
                       
            ZStack {
                CardView()
                    .offset(y: CardMove ? -90 : -150)
                    .animation(.spring())
                           
                BottomCard()
                    .offset(y: CardMove ? 250 : 1000)
                    .animation(.spring())
            }
            .animation(.spring())
                       
                       
            .onTapGesture {
                    self.CardMove = true
             }
            
            Spacer()
                .frame(height: -250)
            
            HelpCardView()
        }
        .animation(.spring())
                 
        .onTapGesture {
                self.CardMove = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Današnje informacije")
                .font(.title)
                .bold()
                                         
                Spacer()
                .frame(height: 10)
                                         
                Text("U posljednja 24 sata")
         }
        .frame(width: 330,height: 100)
        .background(Color("card3"))
        .cornerRadius(15)
        .shadow(color: Color("card3"),radius: 10)
    }
}

struct BlurView: UIViewRepresentable {
    typealias UIViewType = UIView
    var style: UIBlurEffect.Style
    
    func makeUIView(context: UIViewRepresentableContext<BlurView>) -> UIView {
        let view = UIView(frame: CGRect.zero)
        view.backgroundColor = .clear
        
        let blurEffect = UIBlurEffect(style: style)
        let blurView = UIVisualEffectView(effect: blurEffect)
        blurView.translatesAutoresizingMaskIntoConstraints = false
        view.insertSubview(blurView, at: 0)
        
        NSLayoutConstraint.activate([
            blurView.widthAnchor.constraint(equalTo: view.widthAnchor),
            blurView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<BlurView>) {
        
    }
}
