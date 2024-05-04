//
//  TownRowView.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import SwiftUI

struct TownRow: View {
    var town: Town
    var body: some View {
        VStack(alignment: .leading, spacing: 16){
            Text(town.place)
                .font(.system(.title2, design: .rounded))
            HStack{
                Group{
                    Image(systemName: "pin")
                    Text(town.location)
                }
                .font(.subheadline)
                Spacer()
                
            }
        }
        .padding()
    }
}

#Preview {
    TownRow(town: Town.dummyData[0])
}
