//
//  Riwayat.swift
//  Pendasi
//
//  Created by Kholif Huda Arrasyid on 08/06/23.
//

import SwiftUI

struct Riwayat: View {
    var body: some View {
        NavigationStack {
                            HStack{
                                Text("Telur")
                                Text("+")
                                Text("Kentang")
                            }
                                    .navigationTitle("Riwayat MPASI")
                        }
    }
}

struct Riwayat_Previews: PreviewProvider {
    static var previews: some View {
        Riwayat()
    }
}
