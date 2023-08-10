//
//  grid_tenis.swift
//  GridCards
//
//  Created by Henrique on 09/08/23.
//

import SwiftUI

struct grid_tenis: View {
    var body: some View {
        NavigationStack{
            Divider()
            VStack{
                HStack(spacing: 60){
                    Text("ITEMS")
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
                    Text("TOTAL SPENT")
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
                    Text("EST. VALUE")
                        .font(.caption)
                        .fontWeight(.regular)
                        .foregroundColor(Color.gray)
                }
                HStack(){
                    Text("24")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.leading, 35)
                    Text("$3.203")
                        .font(.title2)
                        .fontWeight(.bold)
                        .padding(.leading,60)
                    Image(systemName: "arrow.up.square.fill")
                        .foregroundColor(.green)
                        .padding(.leading, 60)
                    Text("$7.829")
                        .font(.title2)
                        .fontWeight(.bold)
                }
                ScrollView{
                    LazyVGrid(columns: [.init(.adaptive(minimum: 170, maximum: .infinity), spacing: 2 )]) {
                        ForEach(1..<7) { ix in
                            outroswiftviewmds(numero: ix)
                        }
                    }
                }
            }
            .navigationTitle("My Collection")
            .toolbar{
                Image(systemName: "plus")
                    .foregroundColor(.blue)
            }
            
        }
    }
    
}

struct grid_tenis_Previews: PreviewProvider {
    static var previews: some View {
        grid_tenis()
    }
}
