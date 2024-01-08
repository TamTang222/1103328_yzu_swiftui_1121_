<!---
import SwiftUI

    struct Course:Identifiable{
        var id=UUID()
        var name: String
        var image: String
        var description:String
    }
    var courses = [
        Course(name: "Hw1", image: "111", description: "1.一頁式個人檔案\n2.基本資料\n  。學號\n  。姓名\n  。大頭照\n 。一張你選的SF Symbol\n 。你的一句話"),
        Course(name: "Hw2", image: "222", description: "Paper Scissors Stone"),
        Course(name: "Hw3", image: "333", description: "利用VStack, HStack, ZStack打造收藏櫃\n  1.中規中矩(3x3)\n  2.花式"),
        Course(name: "Hw4", image: "444", description: "仿造TabView範例，主題自訂\n\n  1.至少有三個分頁\n  2.必須有\n    。首頁\n    。清單項目\n    。第三頁之後自訂"),
        Course(name: "期末專題", image: "555", description: "1.內容：Free\n2.架構：\n  。SwiftUI語法\n  。上課所提常見架構\n  。網路與資料庫")
    ]
    
    struct BasicImageRow: View{
        var thisCourse:Course
        var body:some View{
            HStack{
                Image(thisCourse.image)
                    .resizable()
                    .frame(width: 40, height: 40)
                    .cornerRadius(5)
                Text(thisCourse.name)
            }
        }
    }
    
    struct CourseDetailView:View{
        @Environment(\.presentationMode) var presentationMode
        var thisCourse:Course
        var body: some View{
            ScrollView{ 
                VStack{
                    Image(thisCourse.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipped()
                    Text(thisCourse.name)
                        .font(.system(.title, design:.rounded))
                        .fontWeight(.black)
                    Spacer()
                    Text(thisCourse.description)
                        .padding(.top , 20)
                        .font(.system(.subheadline, design:.rounded))
                        .fontWeight(.light)
                        .frame(alignment: .leading)
                    Spacer()
                }
            }
            .overlay{
                HStack{
                    Spacer()
                    VStack{
                        Button(action:{ self.presentationMode.wrappedValue.dismiss()
                        },label:{
                            Image(systemName:"chevron.down.circle.fill")
                                .font(.largeTitle)
                                .foregroundColor(.white)
                        })
                        .padding(.trailing,20)
                        .padding(.top,40)
                        Spacer()
                    }
                }
            }
        }
    }
    
struct CourseListView: View{
    @State var showDetailView = false
    @State var selectedCourse:Course? 
    var body: some View{
        NavigationView{
            List(courses){ courseItem in
                //          BasicImageRow(thisCourse: courseItem)
                //            .onTapGes
                BasicImageRow( thisCourse : courseItem)
                    .onTapGesture{
                        self.showDetailView = true
                        self.selectedCourse = courseItem
                    }
            }.navigationBarTitle("課程實作")
            }.sheet(item: self.$selectedCourse){ thisCourse in CourseDetailView(thisCourse: thisCourse)
       }
    }
}
---!>
