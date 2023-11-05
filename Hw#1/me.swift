<!---

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Rectangle()
             /*
              .fill(LinearGradient(gradient: Gradient(colors: [ .gray ,Color(red: 255/255, green: 248/255, blue:214/255)]), startPoint: .topLeading, endPoint: .bottomLeading))
              */
                .fill(LinearGradient(gradient: Gradient(colors: [ Color(.gray),Color(red: 255/255, green: 248/255, blue:214/255)]), startPoint: UnitPoint(x:0,y:0), endPoint: UnitPoint(x:1,y:1)))
             
                .frame(minWidth: 0, idealWidth: 50, maxWidth: .infinity, minHeight: 0, idealHeight: 100, maxHeight: .infinity, alignment: .center)
                .ignoresSafeArea(.all)
            VStack{
                Text("1103328   林唐如")
                    .font(.system(size: 45, weight: .heavy))
                    .frame(width: 400, height: 100, alignment: .center)
                    .rotation3DEffect( .degrees(30), axis: (x:1.0, y:0.0, z:0.0), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, anchorZ: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, perspective: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)         
                    .shadow(color: .black , radius: 2, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: 10)
                    .padding(.top, 0)
                    .offset(x: 0, y: 0)
                    .offset(x: 0, y: -200)
                    .foregroundColor(Color(red: 255/255, green: 248/255, blue:214/255))
                Image("4")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 500, height: 500, alignment: .center)
                    .overlay(
                        Text("允許事情發生\n不管好還是壞\n為什麼、沒關係\n都好可笑\n平靜的面對吧！")
                            .fontWeight(.medium)
                            .lineSpacing(10)
                            .font(.system(size: 30))
                            .foregroundColor(Color(red: 255/255, green: 248/255, blue:214/255))
                            .rotation3DEffect( .degrees(30), axis: (x:1.0, y:0.0, z:0.0), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, anchorZ: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, perspective: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/)
                            .frame(width: 350, height: 400, alignment: .center)
                            .background(.gray)
                           // .opacity(0.5)
                            .cornerRadius(25.0)
                            .opacity(0.8)
                            .offset(x: 0, y: -260)
                            .multilineTextAlignment(.center)
                        , alignment: .bottom
                    )
                    .padding(.all, 0)
                    .offset(x: 0, y: -10)
            }
            Image(systemName:"moon.fill")
                .font(.system(size: 62, weight: .bold))
                .offset(x: -5, y: -310)
                .foregroundColor(Color .yellow)
                .shadow(color: .black  , radius: 13, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            Image(systemName:"star.fill")
                .font(.system(size: 20, weight: .bold))
                .offset(x: 13, y: -323)
                .foregroundColor(Color .yellow)
                .shadow(color:  .black , radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
            
            Image(systemName:"circle.fill")
                .font(.system(size: 7, weight: .bold))
                .offset(x: 35, y: -285)
                .foregroundColor(Color .yellow)
                .shadow(color:  .black , radius: 10, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
        }
    }
}


---!>

