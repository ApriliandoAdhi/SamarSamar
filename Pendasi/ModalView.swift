//
//  ModalView.swift
//  Pendasi
//
//  Created by Adinda Dwi on 09/06/23.
//

import SwiftUI

struct ModalView: View {
    
    @Binding var isShowing: Bool
    
    var body: some View {
        ZStack (alignment: .bottom){
            if isShowing{
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowing = false
                    }
                VStack{
                    Text("Hello")
                }
                .frame(height: 400)
                .frame(maxWidth: .infinity)
                .background(Color.pink)
                
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
    }
}

struct ModalView_Previews: PreviewProvider {
    static var previews: some View {
        RencanaMingguan()
    }
}
