import SwiftUI

struct ContentView: View {
    init() {
//            UINavigationBar.appearance().backgroundColor = .red
           UITabBar.appearance().backgroundColor = .white
       }
    var body: some View {
        TabView {
            Group {
                NavigationStack {
                    ZStack{
                        Color ("Abu")
                            .ignoresSafeArea()
                        VStack (spacing: 0.0) {
                            VStack(spacing: 20.0){
                                Image("OnBoarding")
                                    .resizable()
                                    .frame(width: 326.0, height: 314.0)
                                Text("Petualangan kuliner sehat dan lezat untuk si kecil dengan MPASI Mingguan")
                                    .font(.callout)
                                    .fontWeight(.regular)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color.black)
                                Button {
                                } label: {
                                    Image("AyoMulai")
                                        .resizable()
                                        .frame(width: 358.0, height: 58.0)
                                }
                            }
                        }
                        .navigationTitle("Rencana MPASI")
                        .toolbarBackground(Color.white, for: .navigationBar)
                        .toolbarBackground(.visible, for: .navigationBar)
                    }
                }
                .tabItem {
                    Label("Rencana MPASI", systemImage: "square.and.pencil")
                }
                NavigationStack {
                    HStack{
                        Text("Telur")
                        Text("+")
                        Text("Kentang")
                    }
                            .navigationTitle("Riwayat MPASI")
                }
                    .tabItem {
                        Label("Riwayat", systemImage: "clock.arrow.2.circlepath")
                    }
                
            }
//            .toolbarColorScheme(.yellow, for: .tabBar)
        }
    }
}
        struct Contentview_Previews: PreviewProvider {
            static var previews: some View {
               ContentView()
            }
        }
