//
//  DirectMessagesContent.swift
//  Discord App Recreation Final Project
//
//  Created by Jonathan Zhao on 4/21/22.
//

import SwiftUI

struct DirectMessagesContent: View {
    
    @Binding var sampleText: [String]
    var person:String
    @State var counter = 0
    var body: some View {
        ZStack{
            Color("Discord_Background")
                .ignoresSafeArea()
            VStack(alignment: .leading){
                Form{
                    ForEach(sampleText.indices, id:\.self) {text in
                        HStack{
                            Image(systemName: "person")
                                //.foregroundColor(Color("Discord_Text_Main"))
                                .padding()
                            VStack(alignment: .leading){
                                generateText(counter:counter, person:person, text:text)
                                    
                                Text(sampleText[text])
                                        .foregroundColor(Color("Discord_Text_Normal"))
                                        
                            }
                        }
                            
                    }
                    .listRowBackground(Color("Discord_Background"))
                }
            }
                
        }
    }
}

struct generateText: View{
    var counter:Int = 0
    var person:String
    var text:Int
    var body: some View{
        if text % 2 == 0 && (text < 4){
            Text(person)
                .foregroundColor(Color("Discord_Text_Main"))
        }
        else {
            Text("Jonathan")
                .foregroundColor(Color("Discord_Text_Main"))
        }
    }
}

