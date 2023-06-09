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
                        } label: {
                            Text("Mulai Rencana")
                                .fontWeight(.bold)
                                .multilineTextAlignment(.center)
                                .lineLimit(1)
                                .padding(.trailing, 100)
                                .padding(.leading, 94)
                                .padding(.top, 16)
                                .padding(.bottom, 16 )
//                                .padding(.top, 15)
//                                .padding(.bottom, 15)
                                .font(.title2)
                                .background(Color("AccentColor"))
                                .cornerRadius(8)
                                .foregroundColor(.white)
                                .shadow(radius: 5)
                        }
                    }
                }
                .padding(/*@START_MENU_TOKEN@*/.horizontal, 16.0/*@END_MENU_TOKEN@*/)
                .toolbarBackground(Color.white, for: .navigationBar)
                .toolbarBackground(.visible, for: .navigationBar)
            }
            .navigationBarItems(trailing: Button(action: {
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
