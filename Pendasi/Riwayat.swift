import SwiftUI

struct Riwayat: View {
    @State private var searchText = ""
    @State private var showNotifications = false
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("Abu")
                    .ignoresSafeArea()
                VStack {
                    Group {
                        HStack {
                            Text("Daging")
                                .font(.body)
                                .fontWeight(.regular)
                            Text("+")
                            Text("Kentang")
                                .font(.body)
                                .fontWeight(.regular)
                                .padding(.trailing, 40)
                            Text("😍")
                            Text("10")
                                .font(.body)
                                .fontWeight(.regular)
                            Text("😣")
                            Text("2")
                                .font(.body)
                                .fontWeight(.regular)
                            Text("🤮")
                            Text("1")
                                .font(.body)
                                .fontWeight(.regular)
                        }
                        Divider()
                        .padding(.bottom, 600.0)
                    }
                }
                .toolbarBackground(Color.white, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
            }
            .navigationTitle("Riwayat MPASI")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchText, prompt: "Cari kata...")
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        showNotifications = true
                    }) {
                        Image(systemName: "bell")
                            .foregroundColor(.primary)
                    }
                }
            }
        }
    }
}

struct Riwayat_Previews: PreviewProvider {
    static var previews: some View {
        Riwayat()
    }
}
