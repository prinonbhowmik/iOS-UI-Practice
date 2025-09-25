//
//  CurrentActivityView.swift
//  Body Shape UI
//
//  Created by Prinon bhowmik on 9/16/25.
//

import SwiftUI

struct CurrentActivityView: View {
    let activity: Activity
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .stroke(Color.black, lineWidth: 1)
            .overlay(
                HStack {
                    VStack(alignment: .leading) {
                        Image(systemName: activity.activityImage)
                            .padding()
                            .background(lightPurple)
                            .clipShape(Circle())
                        
                        Text(activity.activityName)
                            .font(.title2)
                            .fontWeight(.bold)
                    }
                    
                    Spacer()
                }.padding(.horizontal)
            )
            .frame(width: activity.dim, height: activity.dim)
    }
}
 

 
#Preview {
    CurrentActivityView(activity: .init(dim: 150, activityName: "Running", activityImage: "figure.run"))
}
