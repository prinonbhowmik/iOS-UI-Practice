//
//  CalenderView.swift
//  Body Shape UI
//
//  Created by Prinon bhowmik on 9/16/25.
//

import SwiftUI

struct DailyDataModel : Identifiable{
    let id = UUID()
    let day : String
    let percentage : CGFloat
    let amount : Int
    
}

struct CalenderView: View {
    
    let selectedDay = "Thu"
    let dailyData : [DailyDataModel]
    let height : CGFloat
    let offsetY : CGFloat
    let selectedWeight : Int
    let selectedWeightUnits : String = "lb"
    let selectedDim = 70.0
    
    var body: some View {
        VStack {
            ZStack {
                Rectangle()
                    .stroke(style: StrokeStyle(lineWidth: 0.2, lineCap: .square, dash: [1,5]))
                .frame(height: 1)
                
                HStack(alignment: .bottom) {
                    ForEach(dailyData) { data in
                        VerticalDotBar(percent: data.percentage, isSelected: data.day == selectedDay, height: height,  offsetY: offsetY, selectedWeight: data.amount)
                            .frame(maxWidth: .infinity)
                    }
                }
                .offset(y: 100 / 2 - 13)
            }
            
            HStack(alignment: .bottom) {
                ForEach(dailyData) { data in
                    VStack {
                        Text(data.day)
                        .frame(maxWidth: .infinity)
                        
                        Text("\(data.amount, specifier: "%02d")")
                        .frame(maxWidth: .infinity)
                    }.fontWeight(data.day == selectedDay ? .bold : .regular)
                }
            }
        }
    }
}

#Preview {
    CalenderView(
        dailyData: [
            .init(day: "Mon",percentage: 0.6, amount: 10),
            .init(day: "Tue",percentage: 0.8, amount: 8),
            .init(day: "Wed",percentage: 0.8, amount: 8),
            .init(day: "Thu",percentage  : 0.8, amount: 8),
        ]
        , height: 100, offsetY: -5, selectedWeight: 12)
}
