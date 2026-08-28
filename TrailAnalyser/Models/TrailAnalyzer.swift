//
//  TrailAnalyzer.swift
//  TrailAnalyser
//
//  Created by Prabhdeep Singh on 28/08/26.
//

import Foundation
import CoreML

struct TrailAnalyzer {
    func predictRisk() -> Risk {
        do {
            let model = try TrailAnalyzerModel(configuration: MLModelConfiguration())
            let input = TrailAnalyzerModelInput(
                distance: 1,
                elevation: 0,
                terrain: "paved",
                dangerous: 0
            )
            let predictedRisk = try model.prediction(input: input).risk
            switch predictedRisk {
            case 0..<20:
                return .easy
            case 20..<50:
                return .moderate
            case 50..<100:
                return .difficult
            default:
                return .highRisk
            }
        }
        catch {
            return .highRisk
        }
    }
}
