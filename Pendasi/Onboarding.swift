//
//  Onboarding.swift
//  Pendasi
//
//  Created by Apriliando Adhi Rinaldy on 05/06/23.
//

import SwiftUI

struct Onboarding: View {
    var body: some View {
        
        VStack {
            Image("ilustrasiPendasi")
                .resizable(resizingMode: .stretch)
                .aspectRatio(contentMode: .fit)
                .offset(y: -120)
            
            Text("\"Petualangan kuliner sehat dan lezat untuk si kecil dengan MPASI mingguan!\"")
                .font(.headline)
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom, .trailing])
                .offset(y: -120)
            
            Button{
            } label: {
                Text("Ayo Mulai")
                    .padding(.trailing, 120)
                    .padding(.leading, 120)
                    .padding(.top, 15)
                    .padding(.bottom, 15)
                    .font(.title)
                    .background(Color("AccentColor"))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .shadow(radius: 5)
            }
        }
        .ignoresSafeArea()
    }
}

struct Onboarding_Previews: PreviewProvider {
    static var previews: some View {
        Onboarding()
    }
}
