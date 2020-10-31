//
//  DetailContactList.swift
//  PersoneListApp
//
//  Created by JARVIS on 29.10.2020.
//

import SwiftUI

struct DetailContactList: View {
    @Binding var models: [ModelPersone]
    var body: some View {
        NavigationView {
            List {
                ForEach(models) { model in
                    Section(
                        header:
                            Text(model.name),
                        content: {
                            LabelWithPicture(text: model.phone, image: "phone")
                            LabelWithPicture(text: model.email, image: "envelope.open")
                        }
                    )
                    .background(NavigationLink("", destination: PersonInfoList(model: model)))
                }
            }
            .navigationBarTitle(Text("Detail Contact List"), displayMode: .inline)
        }
    }
}


