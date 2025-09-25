
import SwiftUI

struct HeartRateRow: View {
    var body: some View {
        HStack {
            HeartRate(
                month: "Oct",
                day: 10,
                year: 2022)
            
            Spacer()
            
            Text("256")
                .font(.largeTitle)
                .fontWeight(.black)
            Text("bmp")
                .font(.subheadline)
                .fontWeight(.bold)
        }
        .padding(.horizontal)
    }
}

struct HeartRate: View {
    let month: String
    let day: Int
    let year: Int
    var body: some View {
        HStack {
            HeartBoltView()
            VStack(alignment: .leading) {
                Text("Heart Rate")
                    .font(.headline)
                Text(verbatim: "\(day) \(month) \(year)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }

        }
    }
}

struct HeartBoltView: View {
    var body: some View {
        ZStack {
            Image(systemName: "heart.fill")
                .imageScale(.large)
            Image(systemName: "bolt.horizontal.fill")
                .imageScale(.small)
                .offset(x: -3)
                .scaleEffect(y: 0.7)
                .foregroundColor(lightGreen)
        }.padding()
        .background(lightGreen)
        .clipShape(Circle())
    }
}


struct HeartRateRow_Previews: PreviewProvider {
    static var previews: some View {
        HeartRateRow()
    }
}
