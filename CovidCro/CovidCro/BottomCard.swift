//
//  BottomCard.swift
//  CovidCro
//
//  Created by Fran Jukic on 09/07/2020.
//  Copyright © 2020 Fran Jukic. All rights reserved.
//

import SwiftUI

struct BottomCard: View {
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 30)
            Text("hi")
                .foregroundColor(Color.white)
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(maxHeight: .infinity)
        .background(Color(#colorLiteral(red: 0.1700507614, green: 0.1700507614, blue: 0.1700507614, alpha: 1)))
        .cornerRadius(30)
    }
}

struct BottomCard_Previews: PreviewProvider {
    static var previews: some View {
        BottomCard()
    }
}
