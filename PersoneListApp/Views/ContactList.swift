//
//  ContactView.swift
//  PersoneListApp
//
//  Created by JARVIS on 29.10.2020.
//

import SwiftUI

struct ContactList: View {
    @Binding var models: [ModelPersone]
    var body: some View {
        NavigationView {
            List {
                ForEach (models) { model in
                    Text(model.name)
                    .background(NavigationLink("", destination: PersonInfoList(model: model)))
                }
            }
            .navigationBarTitle(Text("Contact List"), displayMode: .inline)
        }   
    }
}

