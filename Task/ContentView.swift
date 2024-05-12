
import SwiftUI

enum BottomBarSelectedTab:Int{
    case home = 0
    case search = 1
    case plus = 2
    case notification = 3
    case profile = 4
}



struct ContentView: View {
//    @State private var scrolledOffset: CGFloat = .zero
    var body: some View {
        VStack {
            GeometryReader { geo in
                ZStack(alignment: .top) {
//                    VStack {
                    // Header with blue background
                    HStack {
                        Text("Dashboard")
                            .font(.title)
                            .foregroundColor(.white) // Text color in white
                        Spacer()
                        Button(action: {}) {
                            Image(systemName: "gear")
                        }// Settings icon
                        .foregroundColor(.white) // Icon color in white
                    }
                    .padding()
                    .background(Color.blue)
                }
            }
            // Overview Section
            HStack{
                greetingText
                Spacer()
            }
            .padding()
            .background(Color.white)
            GeometryReader { geo in
                ZStack(alignment: .top) {
                    HStack {
                        Text("Overview")
                            .fontWeight(.bold)
                        Spacer()
                        Text("May 9 - May 10")
                        Image(systemName: "calendar")
                    }
                    .padding(.horizontal)
                }
            }
                    
                
            // Line Graph (Replace with your charting library)
            Rectangle()
                .frame(height: 150)
                .foregroundColor(Color.gray.opacity(0.2))
            
            // Metrics Section
            HStack(spacing: 20) {
                VStack {
                    Text("100")
                    Text("Clicks")
                }
                VStack {
                    Text("New York")
                    Text("Location")
                }
                VStack {
                    Text("Email")
                    Text("Source")
                }
            }
            .padding()
            
            // Sections with Titles (Replace content with your views)
            VStack(spacing: 16) {
                Text("Today's Clicks")
                Text("123")
                
                Text("Top Location")
                Text("Los Angeles")
                
                // Add similar sections for other titles
            }
            .padding(.horizontal)
            
            // Button
            
            Button(action: {}) {
                Text("View Analytics")
            }
            .padding()
            HStack {
                VStack{
                    Button(action: {}) {
                        Image(systemName: "link")}
                    Text("Links")
                }
                
                Spacer()
                VStack{
                    Button(action: {}) {
                        Image(systemName: "book")}
                    Text("Courses")
                }
                Spacer()
                VStack{
                    Button(action: {}) {
                        Image(systemName: "speaker")}
                    Text("Campaigns")
                }
                Spacer()
                VStack{
                    Button(action: {}) {
                        Image(systemName: "person")}
                    Text("Profile")
                }
            }
            .padding()
            .foregroundColor(.gray) // Text color in white
//            .background(Color.white)
//                          .offset(y: scrolledOffset > 0 ? scrolledOffset : 0)
        }
        
    }
    var greetingText: some View {
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: Date())
        var greeting: String
        if hour >= 5 && hour < 12 {
            greeting = "Good Morning"
        } else if hour >= 12 && hour < 17 {
            greeting = "Good Afternoon"
        } else if hour >= 17 && hour < 21 {
            greeting = "Good Evening"
        } else {
            greeting = "Good Night"
        }
        return Text("\(greeting),John") // Replace "John" with user name
            .foregroundColor(.black)
    }
}


struct DashboardView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
