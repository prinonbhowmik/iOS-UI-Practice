//
//  ButtonsView.swift
//  Body Shape UI
//
//  Created by Prinon bhowmik on 1/23/25.
//

import SwiftUI

struct ButtonsView: View {
    let imageNames = [
        "house.fill",
        "bookmark.fill",
        "alarm.fill",
        "arrow.up.right.square.fill"
    ]
    let actionName = [
        "Home",
        "Bookmark",
        "Go to alarm page",
        "Stats"
    ]
    @State var selectedImage = "house.fill"

    var body: some View {
        HStack{
            ForEach(0 ..< imageNames.count, id: \.self){
                i in
                OneButtonView(imageName: imageNames[i], selectedImage: $selectedImage)
            }
        }
    }
    
    struct OneButtonView: View {
        let imageName: String
        @Binding var selectedImage: String
        var action: () -> Void = { print("Button pressed") }
        var isSelected: Bool {
            selectedImage == imageName
        }
        
        var body: some View {
            Button(action: {
                selectedImage = imageName
                action()
            }, label: {
                Image(systemName: imageName)
                    .imageScale(.large)
                    .frame(maxWidth: .infinity)
                    .foregroundColor(.black)
                    .padding()
                    .background(isSelected ? lightGreen : .clear)
                    .clipShape(Circle())
            })
        }
    }
}

#Preview {
    ButtonsView()
}
