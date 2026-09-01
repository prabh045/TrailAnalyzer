//
//  PredictionView.swift
//  TrailAnalyser
//
//  Created by Prabhdeep Singh on 01/09/26.
//

import SwiftUI

struct PredictionView: View {
    @State private var predictedRisk: Risk
    
    init(predictedRisk: Risk) {
        self.predictedRisk = predictedRisk
    }
    
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
        PredictionView(predictedRisk: .moderate)
    }
}
