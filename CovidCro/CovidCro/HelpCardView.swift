//
//  HelpCardView.swift
//  CovidCro
//
//  Created by Fran Jukic on 11/07/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct HelpCardView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("MJERE OPREZA")
                .font(.title)
                .bold()
            Spacer()
                .frame(height: 10)
            Text("Pranje ruku")
            Text("Distanca od 2 metra")
            Text("Nošenje maske")
        }
        .frame(width: 330,height: 300)
        .background(Color.blue)
        .cornerRadius(15)
        .shadow(color: Color.blue, radius: 10)

    }
}

struct HelpCardView_Previews: PreviewProvider {
    static var previews: some View {
        HelpCardView()
    }
}
