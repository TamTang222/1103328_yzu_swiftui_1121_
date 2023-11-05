<!---

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red:252/255,green:246/255,blue:239/255)
                .ignoresSafeArea().opacity(0.5)
            VStack{
                VStack {
                    ZStack(){
                        Image(systemName: "circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.cyan)
                            .opacity(0.1)
                            .frame(width:80)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.mint)
                            .opacity(0.1)
                            .frame(width:80)
                            .offset(x: 30, y: 25)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.pink)
                            .opacity(0.1)
                            .frame(width:80)
                            .offset(x: -30, y: 25)
                        Image(systemName: "circle.fill")
                            .resizable()
                            .scaledToFit()
                            .foregroundColor(.brown)
                            .opacity(0.1)
                            .frame(width:80)
                            .offset(x: 0, y: 50)
                        Text("FLOWER\n. STORE")
                            .fontWeight(.heavy)
                            .font(.system(size:30,design: .rounded))
                            .foregroundColor(.gray)
                            .kerning(0) //字距
                            .lineSpacing(35) //行距
                          //  .italic()
                            .opacity(0.7)
                            .offset(x: 0, y: 20)
                            .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    }
                    .padding(.top,40)
                    .padding(.bottom,60)
                }
                Grid( horizontalSpacing: 10, verticalSpacing: 10){
                    GridRow {
                        Grid{
                            Image("1")
                                .resizable()
                                .scaledToFit()
                            Image("2")
                                .resizable()
                                .scaledToFit()
                        }
                        Grid{
                            Image("3")
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .background(){
                                    Circle()
                                        .offset(x:10 , y:5 )
                                        .foregroundColor(.gray)
                                        .opacity(0.7)
                                }
                            Image("4")
                                .resizable()
                                .scaledToFit()
                        }
                        Image("tall")
                            .resizable()
                            .scaledToFit()
                            .gridCellUnsizedAxes(.vertical)
                    }
                    GridRow {
                        Image("5")
                            .resizable()
                            .scaledToFit()
                            .gridCellUnsizedAxes(.horizontal)
                        
                        Image("med")
                            .resizable()
                            .gridCellColumns(2)
                            .gridCellUnsizedAxes(.horizontal)
                            .gridCellUnsizedAxes(.vertical)
                    }
                }
                Spacer()
            }
        }
    }
}


--->
