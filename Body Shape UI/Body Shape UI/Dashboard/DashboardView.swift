
import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            IconRight(
                imageName: "circle.grid.cross.fill",
                angle: 45)
                .padding()
            
            VStack (alignment: .leading, spacing: 20){
                
                WelcomeMessageView(userName: "Emily")
                
                Spacer()
                
                WeightView(weight: 62.2)
                
                Spacer()
                
                DataSummaryView(arrow: "arrow.down.circle.fill",
                                calories: "2.436",
                                numberOfPeopleShowing: 4)
                
                ButtonsView()
                
                
            }.frame(maxWidth: .infinity,maxHeight: .infinity,alignment: .leading)
            .padding()
        }
        
    }
}

#Preview {
    DashboardView()
}
