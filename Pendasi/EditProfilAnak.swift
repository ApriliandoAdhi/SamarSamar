//
//  EditProfilAnak.swift
//  Pendasi
//
//  Created by Kholif Huda Arrasyid on 09/06/23.
//

import SwiftUI

struct EditProfilAnak: View {
    @State private var name: String = ""
    @State private var birthdate: Date = Date()
    @State private var isDatePickerVisible = false

    
    var body: some View {
    NavigationView {
        ZStack {
            Color("Abu")
                .ignoresSafeArea()
            Group {
                VStack {
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
                }
                .padding(.bottom, 600)
            }
            .toolbarBackground(Color.white, for: .navigationBar)
            .toolbarBackground(.visible, for: .navigationBar)
            .navigationTitle("Edit Profil Anak")
            .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

struct EditProfilAnak_Previews: PreviewProvider {
    static var previews: some View {
        EditProfilAnak()
    }
}
