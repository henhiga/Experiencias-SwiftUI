//
//  ContentView.swift
//  card1
//
//  Created by Henrique on 07/08/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView{
            VStack {
                Cards(animalname: "DOG", corAtras: .blue)
                Cards2(teste: false)
                Cards3()
                Cards4()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
