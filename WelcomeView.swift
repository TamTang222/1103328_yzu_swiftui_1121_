<!---
import SwiftUI

struct WelcomeView: View{
    var body: some View{
        VStack{
            Image("2")
              .resizable()
              .scaledToFit()
              .frame(width: 400, height: 400)
              .padding(.top,50)
            
            Text("YZU_SwiftUI\nHw#4")
                .fontWeight(.heavy)
                .lineSpacing(20)
                .font(.system(size: 32.0))
                .foregroundColor(.white)
                .frame(width: 300, height: 150, alignment: .center)
                .background(Color.teal)
                .cornerRadius(20.0)
                .multilineTextAlignment(.center)
        }
        .background(Color.clear)
        .ignoresSafeArea()
    }
}
---!>
