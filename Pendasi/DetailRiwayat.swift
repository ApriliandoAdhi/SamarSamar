//
//  DetailRiwayat.swift
//  Pendasi
//
//  Created by Kholif Huda Arrasyid on 11/06/23.
//

import SwiftUI

struct DetailRiwayat: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Abu")
                    .ignoresSafeArea()
                ScrollView(.vertical, showsIndicators: false) {
                        VStack{
                            Group {
                                Group {
                                    HStack {
                                        Text ("23")
                                            .font(.caption)
                                            .fontWeight(.bold)
                                        Text ("MARET")
                                            .font(.caption)
                                            .fontWeight(.bold)
                                        Text ("23")
                                            .font(.caption)
                                            .fontWeight(.bold)
                                        Text (":")
                                            .font(.caption)
                                            .fontWeight(.bold)
                                        Text ("SARAPAN")
                                            .font(.caption)
                                            .fontWeight(.bold)
                                    }
                                }
                                .padding(.trailing, 190.0)
                                Divider()
                                Group {
                                    HStack {
                                        Text("Serat")
                                            .font(.body)
                                            .fontWeight(.regular)
                                        Spacer()
                                        Spacer()
                                        Spacer()
                                        Text("Bayam")
                                            .font(.body)
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("Abu1"))
                                    }
                                    .frame(width: 360, height: 20)
                                    Divider()
                                    HStack {
                                        Text("Protein Nabati")
                                            .font(.body)
                                            .fontWeight(.regular)
                                        Spacer()
                                        Spacer()
                                        Spacer()
                                        Text("Tempe")
                                            .font(.body)
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("Abu1"))
                                    }
                                    .frame(width: 360, height: 20)
                                    Divider()
                                    HStack {
                                        Text("Lemak")
                                            .font(.body)
                                            .fontWeight(.regular)
                                        Spacer()
                                        Spacer()
                                        Spacer()
                                        Text("Minyak Zaitun")
                                            .font(.body)
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("Abu1"))
                                    }
                                    .frame(width: 360, height: 20)
                                    Divider()
                                    HStack {
                                        Text("Reaksi Anak")
                                            .font(.body)
                                            .fontWeight(.regular)
                                        Spacer()
                                        Spacer()
                                        Spacer()
                                        Text("Tidak Alergi dan Suka")
                                            .font(.body)
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("Abu1"))
                                    }
                                    .frame(width: 360, height: 20)
                                    Divider()
                                    HStack {
                                        Text("Serat")
                                            .font(.body)
                                            .fontWeight(.regular)
                                        Spacer()
                                        Spacer()
                                        Spacer()
                                        Text("Bayam")
                                            .font(.body)
                                            .fontWeight(.regular)
                                            .foregroundColor(Color("Abu1"))
                                    }
                                    .frame(width: 360, height: 20)
                                    Divider()
                                }
                            }
                            Divider()
                    }
                    .padding(.all, 8.0)
                }
            }
            .toolbarBackground(Color.white, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Riwayat MPASI")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct DetailRiwayat_Previews: PreviewProvider {
    static var previews: some View {
        DetailRiwayat()
    }
}
