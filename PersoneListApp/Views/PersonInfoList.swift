//
//  PersonInfoList.swift
//  PersoneListApp
//
//  Created by JARVIS on 29.10.2020.
//

import SwiftUI

struct PersonInfoList: View {
    let model: ModelPersone
    var body: some View {
        HStack(alignment: .top, spacing: 40){
            VStack(alignment: .leading, spacing: 5) {
                Text("Name ")
                Text("Username ")
                Text("Phone ")
                Text("Email ")
                Text("Site ")
                Text("Adress ")
                Text("Company ")
            }
            VStack(alignment: .leading, spacing: 5) {
                Text("\(model.name)")
                Text("\(model.username)")
                Text("\(model.phone)")
                Text("\(model.email)")
                Text("\(model.website)")
                Text("\(model.address.city)")
                Text("\(model.company.name)")
            }
            Spacer()
        }
        .padding(20)
        Spacer()
    }
}
