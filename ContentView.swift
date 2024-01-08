<!---
import SwiftUI

struct ContentView: View{
 //   @State private var tabColor : Color = .mint
    var body: some View{
        VStack{
            /*        Text("行動開發學院")
             .font(.largeTitle)
             .fontWeight(.heavy)
             .foregroundStyle(.primary) */
            TabView() { 
                Group{
                    //Text("第一頁")
                    WelcomeView()
                        .tabItem{
                            Image(systemName: "rosette")
                            Text("Welcome")
                        }
                    //Text("第二頁")
                    CourseListView()
                        .tabItem{
                            Image(systemName: "list.dash")
                            Text("Courses")
                        }    
                    //    Text("第三頁")
                    CardView()
                        .tabItem( ){
                             Image(systemName: "star")
                             Text("tab3")
                        } 
                }
                .toolbarBackground(Color.gray.opacity(0.2) , for: .tabBar)
                .toolbarBackground(.visible, for: .tabBar)
                
            }
            .tint(.teal)
           
---!>
