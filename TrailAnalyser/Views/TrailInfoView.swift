//
//  TrailInfoView.swift
//  TrailAnalyser
//
//  Created by Prabhdeep Singh on 28/08/26.
//

import SwiftUI

struct TrailInfoView: View {
    @Binding var trailInfo: TrailInfo
    
    var body: some View {
        VStack {
            Text("Distance")
            TextField("kilometers", value: $trailInfo.distance, format: .number)
                .keyboardType(.numberPad)


            Text("Elevation Change")
            TextField("meters", value: $trailInfo.elevation, format: .number)
                .keyboardType(.numberPad)


            Text("Terrain")
            Picker("Terrail", selection: $trailInfo.terrain) {
                ForEach(Terrain.allCases) { terrain in
                    Text(terrain.rawValue.capitalized)
                        .tag(terrain)
                }
            }


            Text("Danger from wildlife")
            Picker("Danger from wildlife", selection: $trailInfo.wildlifeDangerLevel) {
                Text("Low")
                    .tag(TrailInfo.lowDanger)
                Text("High")
                    .tag(TrailInfo.highDanger)
            }
            .frame(width: 110)
            .pickerStyle(.segmented)


        }
    }
}

#Preview {
    @Previewable @State var trailInfo = TrailInfo.empty
    TrailInfoView(trailInfo: $trailInfo)
}
