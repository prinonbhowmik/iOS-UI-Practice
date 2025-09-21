//
//  ResultTopRow.swift
//  Body Shape UI
//
//  Created by Prinon bhowmik on 9/21/25.
//

import SwiftUI

struct ResultTopRow: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading){
                Text("Result")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Text("Oct 2025")
                    .font(.subheadline)
                    .fontWeight(.bold)
                    .foregroundColor(.gray)
            }
            Spacer()
            
            Image(systemName:"arrow.uturn.backward")
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .clipShape(.circle)
        }
    }
}

#Preview {
    ResultTopRow()
}
