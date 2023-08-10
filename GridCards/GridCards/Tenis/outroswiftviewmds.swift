//
//  outroswiftviewmds.swift
//  GridCards
//
//  Created by Henrique on 09/08/23.
//

import SwiftUI

struct outroswiftviewmds: View {
    var numero : Int
    var body: some View {
        NavigationLink{
            tenis_info()
        } label: {
            Image("jordan_\(numero)")
                .resizable()
                .scaledToFit()
                .frame(width: 180, height: 200)
                .shadow(radius: 1)
        }
    }
}
