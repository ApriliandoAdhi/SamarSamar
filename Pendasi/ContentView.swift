import SwiftUI

struct ContentView: View {
    @State private var name: String = ""
    @State private var birthdate: Date = Date()
    @State private var isDatePickerVisible = false

    var body: some View {
        NavigationView {
            ZStack {
                Color("Abu")
                    .ignoresSafeArea()
                VStack(spacing: 0.0) {
                    VStack(spacing: 20.0) {
                        Image("OnBoarding")
                            .resizable()
                            .frame(width: 326.0, height: 314.0)
                        Text("Petualangan kuliner sehat dan lezat untuk si kecil dengan MPASI Mingguan")
                            .font(.callout)
                            .fontWeight(.regular)
                            .multilineTextAlignment(.center)
                            .foregroundColor(Color.black)
                        TextField("Nama", text: $name)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                        Button(action: {
                            isDatePickerVisible = true
                        }) {
                            TextField("Tanggal Lahir", text: .constant(""), onEditingChanged: { _ in
                                isDatePickerVisible = true
                            })
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .padding()
                            
                            .disabled(true)
                        }
                        if isDatePickerVisible {
                            DatePicker(
                                selection: $birthdate,
                                displayedComponents: [.date]
                            ) {
                                Text("Tanggal Lahir")
                            }
                            .datePickerStyle(WheelDatePickerStyle())
                            .padding()
                        }
                        Button {
                            // Tindakan yang ingin Anda lakukan saat tombol "Mulai Rencana" ditekan
                        } label: {
                            Text("Mulai Rencana")
                                .multilineTextAlignment(.center)
                                .padding(.trailing, 120)
                                .padding(.leading, 94)
                                .padding(.top, 15)
                                .padding(.bottom, 15)
                                .font(.title)
                                .background(Color("AccentColor"))
                                .cornerRadius(0)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                        }
                    }
                }
                .toolbarBackground(Color.white, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
            }
            .navigationBarItems(trailing: Button(action: {
                // Tindakan yang ingin Anda lakukan saat tombol "lewati" ditekan
            }) {
                Text("Lewati")
                    .foregroundColor(.yellow)
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
