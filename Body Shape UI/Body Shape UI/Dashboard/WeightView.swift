//
//  WeightView.swift
//  Body Shape UI
//
//  Created by Prinon bhowmik on 1/6/25.
//

import SwiftUI

struct WeightView: View {
    let weight: Double
    
    var body: some View {
        HStack(spacing: 50) {
            
            VStack(alignment: .leading, spacing: 10) {
                HStack {
                    Text("\(weight, specifier: "%.1f")")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    Text("lb")
                        .font(.caption)
                        .fontWeight(.semibold)
                }
                Text("Current Weight")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            
            
            VStack(alignment: .leading, spacing: 10) {
                HStack(alignment: .lastTextBaseline) {
                    Text("2.5")
                        .font(.title2)
                        .fontWeight(.bold)
                    Text("lb")
                        .font(.caption)
                        .fontWeight(.semibold)
                        .frame(alignment: .bottomTrailing)
                        
                }
                
                FillBarView(
                    barWidth: 7,
                    colorBG: .black,
                    colorFill: lightGreen,
                    percentage: 0.3)
                
                Text("Left to Gain")
                    .fontDesign(.rounded)
                    .foregroundStyle(.gray)
            }
            
        }
    }
}

#Preview {
    WeightView(weight: 61.2)
}
