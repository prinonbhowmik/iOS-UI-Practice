
import SwiftUI

struct SplashView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            
            VStack {
                TopRowView()
                
                Image(bikeImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Discover how To Shape The Body")
                    .font(.system(size: 48, weight: .bold, design: .serif))
                    .padding()
                Spacer()
                
                LastRowOfSplashView()
            }
        }
        
    }
}

struct ArrowInCircle: View {
    var body: some View {
        Image(systemName: "arrow.forward")
            .fontWeight(.bold)
            .imageScale(.large)
            .padding(3)
            .overlay(
                ZStack{
                    Circle()
                    Image(systemName: "arrow.forward")
                        .fontWeight(.bold)
                        .imageScale(.large)
                        .foregroundColor(lightGreen)
                        .offset(x: -6)
                        .scaleEffect(y: 0.7)
                }
            )
            .padding()
            .background(
                Circle().fill(lightGreen)
            )
        
    }
}

struct LastRowOfSplashView: View {
    var body: some View {
        HStack{
            ArrowInCircle()
            Spacer()
        }.padding()
    }
}

struct BackgroundView: View{
   var body: some View {
       GeometryReader{ geometry  in
           Circle()
               .fill(lightPurple)
               .scaleEffect(2)
               .offset(y: -geometry.size.height*0.3)
       }
    }
}

struct TopRowView: View {
    var body: some View {
            HStack {
                Image(systemName: "line.3.horizontal")
                    .imageScale(.large)
                    .fontWeight(.bold)
                
                Spacer()
                
                
            }.padding()
    }
}

#Preview {
    SplashView()
}
