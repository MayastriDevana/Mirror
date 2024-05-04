//
//  ContentView.swift
//  Mirror
//
//  Created by User on 02/05/24.
//

import SwiftUI

struct StoreView: View {
    @StateObject private var placeVM = PlaceVM()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(placeVM.town, id: \.self){
                    item in TownRow(town: item)
                }
            }
            .navigationTitle("Jakarta")
            .overlay{
                placeVM.town.isEmpty ? ProgressView() : nil
            }
//            .task {
//                await placeVM.getPlaces()
//            }
            .onChange(of: placeVM.isReady) {
                oldValue, isReady in
                if isReady {
                    Task{
                        await placeVM.getPlaces()
                    }
                }
            }
        }
    }

}

#Preview {
    StoreView()
}
