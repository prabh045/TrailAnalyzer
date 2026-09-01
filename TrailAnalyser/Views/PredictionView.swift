//
//  PredictionView.swift
//  TrailAnalyser
//
//  Created by Prabhdeep Singh on 01/09/26.
//

import SwiftUI

struct PredictionView: View {
    @Binding var predictedRisk: Risk
        
    var body: some View {
        VStack {
            RiskCard(risk: predictedRisk)
            Spacer()
        }
        .navigationTitle("Results")
        .navigationBarTitleDisplayMode(.large)
        .toolbar(content: {
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink {
                    riskSummaryView
                } label: {
                    Image(systemName: "info.circle")
                }

            }
        })
        .trailTheme()
    }
    
    var riskSummaryView: some View {
        ScrollView {
            ForEach(Risk.allCases) {
                RiskCard(risk: $0)
            }
        }
        .trailTheme()
    }
}

#Preview {
    NavigationStack {
        PredictionView(predictedRisk: Binding.constant(.moderate))
    }
}
