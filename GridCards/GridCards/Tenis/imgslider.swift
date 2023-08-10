//
//  imgslider.swift
//  GridCards
//
//  Created by Henrique on 09/08/23.
//


import SwiftUI

struct imgslider: View {
    
    // 1
    private let images = ["jordan_1", "jordan_1", "jordan_1", "jordan_1"]
    
    var body: some View {
        // 2
        TabView {
            ForEach(images, id: \.self) { item in
                 //3
                 Image(item)
                    .resizable()
                    .scaledToFit()
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct imgslider_Previews: PreviewProvider {
    static var previews: some View {
        imgslider()
    }
}
