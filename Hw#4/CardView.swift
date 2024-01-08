<!---
import SwiftUI

struct TermAndDescription: Identifiable{
    var id = UUID()
    var term : String
    var description : String
}
var colors: [Color] = [ .orange, .green, .yellow, .pink, .purple ]
var myDictionary =  [
    TermAndDescription(term: "Happy", description: "🌝"),
    TermAndDescription(term: "New", description: "🤩🤩"),
    TermAndDescription(term: "Year", description: "🎊🎊🎊"), 
    TermAndDescription(term: "!!!", description: "🥳🥳🥳🥳" )
]

struct CardView: View{
    @State var currentCard : Int = 0
    var body : some View{
        VStack{
            
                VStack{
                    Text(myDictionary[currentCard].term)
                        .padding(.all, 30)
                        .fontWeight(.heavy)
                        .font(.system(size:30,design: .rounded))
                        .foregroundColor(.black)
                        .kerning(3) //字距
                        .offset(x: 0, y: 20)
                        .frame(alignment: .center )
                    Text(myDictionary[currentCard].description)
                         .font(.system(size: 40))
                        .foregroundColor(.blue)
                        .padding(.all, 10)
                }
            .frame(minWidth: 0, idealWidth: 100, maxWidth: 300, minHeight: 0, idealHeight: 100, maxHeight: 300, alignment: .center )
             .cornerRadius(20.0)
            .background(colors[currentCard])
          /*  .onTapGesture{
                    if currentCard<myDictionary.count-1{
                        currentCard+=1
                    }else{
                        currentCard=0
                    } 
                } */
            Picker("", selection: $currentCard) {
                ForEach(0..<4, id: \.self) { index in
                    Text("Go to  \(index)")
                }
            }
            .pickerStyle(.wheel)
            .frame(width: 300, height: 200)
            .background(.clear )
            .clipShape(RoundedRectangle(cornerRadius: 100))
            .shadow(radius: 30)
            
        }
    }
}
---!>
