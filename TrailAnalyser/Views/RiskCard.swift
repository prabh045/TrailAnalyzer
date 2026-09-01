//
//  RiskCard.swift
//  TrailAnalyser
//
//  Created by Prabhdeep Singh on 28/08/26.
//

import SwiftUI

struct RiskCard: View {
    @State private var risk: Risk
    
    init(risk: Risk) {
        _risk = .init(initialValue: risk)
    }
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(risk.image)
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(risk.rawValue)
                    .font(.title2)
            }
            Text(risk.description)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .padding(16)
        .background(.white, in: RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    let prediction = TrailAnalyzer().predictRisk(trailInfo: .sample)
    RiskCard(risk: prediction)
}
