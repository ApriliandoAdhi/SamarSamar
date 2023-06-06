import SwiftUI

struct CustomSwitchToggleStyle: ToggleStyle {
    func makeBody(configuration: Configuration) -> some View {
        Button(action: { configuration.isOn.toggle() }) {
            HStack {
                configuration.label
                    .foregroundColor(.primary)
                Spacer()
                Image(systemName: configuration.isOn ? "checkmark.circle.fill" : "square")
                    .foregroundColor(configuration.isOn ? .orange : .primary)
                    .padding(.horizontal)
                    
                    
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ContentView: View {
    @State private var selectedAgeRange = 0
    let ageRanges = ["6-8 Bulan", "9-11 Bulan", "12-23 Bulan"]

    @State private var selectedTexture = 0
    let textures = ["Puree", "Lumat", "Cincang Halus", "Cincang Kasar", "Utuh"]

    @State private var isEggExcluded = false
    @State private var isMilkExcluded = false
    @State private var isSquidExcluded = false
    @State private var isNutsExcluded = false
    @State private var isShrimpExcluded = false

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Usia Anak").font(.headline).foregroundColor(.blue)) {
                    Picker("Usia Anak", selection: $selectedAgeRange) {
                        ForEach(ageRanges.indices, id: \.self) { index in
                            Text(ageRanges[index])
                        }
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }

                Section(header: Text("Tekstur").font(.headline).foregroundColor(.blue)) {
                    List(textures.indices, id: \.self) { index in
                        Button(action: {
                            withAnimation(.easeOut(duration: 0.2)) {
                                selectedTexture = index
                            }
                        }) {
                            HStack {
                                Text(textures[index])
                                    .font(.headline)
                                    .foregroundColor(.white)
                                Spacer()
                                if selectedTexture == index {
                                    Image(systemName: "checkmark.square.fill")
                                        .foregroundColor(.white)
                                        .font(.title)
                                        .transition(.opacity)
                                }
                            }
                            .padding()
                            .background(Color.orange)
                            .cornerRadius(10)
                            .shadow(color: .gray, radius: 2, x: 0, y: 2)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
                }

                Section(header: Text("Alergi").font(.headline).foregroundColor(.blue)) {
                    VStack(alignment: .leading) {
                        Toggle("Telur", isOn: $isEggExcluded.animation())
                            .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                            .toggleStyle(CustomSwitchToggleStyle())
                        Toggle("Susu Sapi", isOn: $isMilkExcluded.animation())
                            .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                            .toggleStyle(CustomSwitchToggleStyle())
                        Toggle("Cumi-Cumi", isOn: $isSquidExcluded.animation())
                            .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                            .toggleStyle(CustomSwitchToggleStyle())
                        Toggle("Kacang", isOn: $isNutsExcluded.animation())
                            .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                            .toggleStyle(CustomSwitchToggleStyle())
                        Toggle("Udang", isOn: $isShrimpExcluded.animation())
                            .padding(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/)
                            .toggleStyle(CustomSwitchToggleStyle())
                    }
                }

                Section {
                    Button(action: {

                    }) {
                        Text("Ayo Mulai")
                            .font(.title)
                            .frame(maxWidth: .infinity, alignment: .center)
                            .padding()
                            .foregroundColor(.white)
                            .background(Color.orange)
                            .cornerRadius(10)
                            .scaleEffect(1.0)

                    }
                }
            }
            .navigationBarTitle("Rencana MPASI")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
