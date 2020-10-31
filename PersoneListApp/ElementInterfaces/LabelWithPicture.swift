//
//  LabelWithPicture.swift
//  PersoneListApp
//
//  Created by JARVIS on 29.10.2020.
//

import SwiftUI

struct LabelWithPicture: View {
    let text: String
    let image: String
    var body: some View {
        HStack {
            Image(systemName: image).font(.system(size: 18, weight: .regular))
            Spacer().frame(width: 20)
            Text(text)
        }
    }
}

struct LabelWithPicture_Previews: PreviewProvider {
    static var previews: some View {
        LabelWithPicture(text: "Number Phone", image: "phone")
    }
}
