<!---

import SwiftUI

enum Choices: String, CaseIterable{
    case paper="🖐️" ,rock="✊", scissors="✌️"
   /*  var image: some View{
        switch self{
        case .paper:return Image("paper")  .resizable().scaledToFit()
        case .rock:return Image("stone")  .resizable().scaledToFit()
        case .scissors:return Image("scissor")  .resizable().scaledToFit()
        } 
    } */
}

struct ContentView: View {
    @State var computerChoice = Choices.allCases.first!
    @State var myChoice = " "
    @State var outcome = " "
    
    @State var computerNum = 0
    @State var win = 0
    @State var round = 0
    
    @State var click = false
    @State var end = false
    
    var body: some View {
        VStack{
            Text( "Round : \(round) ")
                .fontWeight(.heavy)
                .font(.system(size: 40 ,design: .rounded )) 
            //  .foregroundColor(.gray)
                .padding()
                .opacity(0.6)
                .background(){ 
                    RoundedRectangle( cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                        .foregroundColor( .teal )
                        .opacity(0.5 )
                }
                .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            HStack{ 
                if click {
                    //   Text(computerChoice.rawValue )
                    //      .font(.system(size: 100))
                    switch computerNum {
                    case 0:  Text("✋🏾" ).font(.system(size: 100))
                    case 1 :  Text("✊🏾" ).font(.system(size: 100))
                    default:  Text("✌🏾" ).font(.system(size: 100))
                    }
                } else {
                    Text("🤜🏾 ")
                        .font(.system(size: 95 ))
                }
                Text("V.S.")
                    .fontWeight(.bold )
                    .font(.system(size: 30 ,design: .rounded ))
                    .foregroundColor(.gray)
                if click {
                    Text(myChoice)
                        .font(.system(size: 100))
                } else {
                    Text(" 🤛")
                        .font(.system(size: 95 ))
                }
            }  
            Text( "Point : \(win)").padding(.all , 2)
            Text("please make a choice …")
                .padding(.top, 50).padding(.bottom, 5)
            HStack(spacing:20){
                ForEach(Choices.allCases, id: \.self){option in 
                    Button(action:{
                        round+=1
                        
                        //random index
                        let index = Int.random( in: 0...Choices.allCases.count-1)
                        computerChoice = Choices.allCases[index]
                        myChoice = (option.rawValue)
                        computerNum = index
                        click = true
                        checkWin(playerChoice: option)
                    }){
                        Text(option.rawValue) 
                            .font(.system(size: 50))
                    }
                }
            }     
            /* HStack{
             Spacer()
             Text("Point : \(win)")
             Spacer()
             Text("Round : \(round)")
             Spacer()
             }  .padding(.top, 20)  */
        }.frame( maxWidth: .infinity, maxHeight: .infinity)
            .background( Color(red:252/255,green:246/255,blue:239/255).opacity(0.7) )
            
        .alert ("Game Over! ", isPresented: $end ){
            Button ( "Continue", action:{
                round = 0
                win = 0
                end = false
                click = false
            } )
        } message: { Text(" Your score is \(win)/10 ")}
    }
    func checkWin(playerChoice : Choices){
        switch ( playerChoice, computerChoice ){
        case (.rock, .rock): outcome = "Draw"
        case (.rock, .paper): outcome = "Lose"
        case (.rock, .scissors): outcome = "Win"
        case (.paper, .paper): outcome = "Draw"
        case (.paper, .rock): outcome = "Win"
        case (.paper, .scissors): outcome = "Lose"
        case (.scissors, .scissors): outcome = "Draw"
        case (.scissors, .paper): outcome = "Win"
        case (.scissors, .rock): outcome = "Lose"    
        }
        if outcome == "Win" { win += 1 }
        if  ( round >= 10 ) { end = true }
    }
}


--->
