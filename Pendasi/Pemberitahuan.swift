import SwiftUI

struct Pemberitahuan: View {
    @State private var isShowingModal = false

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
                                    Text ("22")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                    Text ("Maret")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                    Text ("2024")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                    Text (":")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                    Text ("Sarapan")
                                        .font(.caption)
                                        .fontWeight(.bold)
                                    
                                }
                                .padding(.trailing, 185.0)
                                Text ("Beritahu respon anak anda agar menu yang direkomendasikan lebih sesuai")
                                    .font(.caption)
                                    .fontWeight(.regular)
                                    .foregroundColor(Color("Abu1"))
                            }
                            .onTapGesture {
                                isShowingModal = true
                            }
                        }
                        Divider()
                            .padding(.bottom, 600)
                    }
                }
                .toolbarBackground(Color.white, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
                .navigationTitle("Pemberitahuan")
                .navigationBarTitleDisplayMode(.inline)
                .sheet(isPresented: $isShowingModal) {
                    BeritahuRespon()
                }
            }
        }
    }
}

struct Pemberitahuan_Previews: PreviewProvider {
    static var previews: some View {
        Pemberitahuan()
    }
}
