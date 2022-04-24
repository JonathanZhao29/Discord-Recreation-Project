//
//  ContentView.swift
//  Discord App Recreation Final Project
//
//  Created by Jonathan Zhao on 4/7/22.
//

import SwiftUI

struct ViewDirectMessagesPage: View {
    @State var listOfPeople:[String] = ["Sam Shi", "Bam Bhi", "Ham Hhi", "John Doe","Cat Person"]
    var body: some View {

        NavigationView{
            
            ZStack{
                Color("Discord_Background")
                    .ignoresSafeArea()
                VStack{
                    directMessageTitle
                    findConversation
                    listOfConversations(listOfPeople: $listOfPeople)
                    Spacer()
                }
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ViewDirectMessagesPage()
    }
}

var directMessageTitle: some View{
    HStack{
        Text("Direct Messages")
            .foregroundColor(Color("Discord_Text_Main"))
            .bold()
            .padding()
        Spacer()
        Image(systemName: "plus.message.fill")
            .foregroundColor(.white)
            .frame(width: 50)
    }
    .font(.title)
}

var findConversation: some View{
    //var inputSearch:String = ""
    HStack{
        //TextField("Find or start a conversation", text: inputSearch)
        Text("Find or start a conversation")
            .padding()
            .foregroundColor(Color("Discord_Text_Normal"))
        Spacer()
        Image(systemName: "magnifyingglass")
            .foregroundColor(Color("Discord_Text_Normal"))
            .frame(width: 50)
    }.background(Color("Discord_TextField"))
}

struct listOfConversations: View{
    @Binding var listOfPeople:[String]
    var body: some View{
            ZStack{
                Color("Discord_Background")
                    .ignoresSafeArea()
                VStack(alignment: .leading){
                    ForEach(listOfPeople,id:\.self) {text in
                        
                        HStack{
                            Image(systemName: "person")
                                .foregroundColor(Color("Discord_Text_Normal"))
                                .padding()
                            NavigationLink(destination: Discord_Main_Page(personName: text)) {
                                Text(text).font(.title2)
                            }.padding()
                        }
                    }
                    .listRowBackground(Color("Discord_Background"))
                }
            }
    }
}



