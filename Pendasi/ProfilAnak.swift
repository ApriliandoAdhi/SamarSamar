import SwiftUI

struct ProfilAnak: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("Abu")
                    .ignoresSafeArea()
                Group {
                    VStack {
                        Group {
                            VStack {
                                HStack {
                                    Text ("Nama")
                                        .font(.body)
                                        .fontWeight(.regular)
                                    Spacer()
                                    Text ("Chira")
                                        .font(.body)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("Abu1"))
                                }
                                .padding(.leading, 16)
                                .padding(.trailing, 16)
                                Divider()
                                
                                HStack {
                                    Text ("Tanggal Lahir")
                                        .font(.body)
                                        .fontWeight(.regular)
                                    Spacer()
                                    Text ("20")
                                        .font(.body)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("Abu1"))
                                    Text ("Maret")
                                        .font(.body)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("Abu1"))
                                    Text ("2022")
                                        .font(.body)
                                        .fontWeight(.regular)
                                        .foregroundColor(Color("Abu1"))
                                }
                                .padding(.leading, 16)
                                .padding(.trailing, 16)
                            }
                        }
                        .padding(.bottom, 600)
                    }
                }
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button(action: {
                            // Handle "Ubah" button tap
                        }) {
                            Text("Ubah")
                        }
                    }
                }
                .toolbarBackground(Color.white, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationTitle("Pemberitahuan")
                .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct ProfilAnak_Previews: PreviewProvider {
    static var previews: some View {
        ProfilAnak()
    }
}
