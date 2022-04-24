//
//  DirectMessagePage.swift
//  Discord App Recreation Final Project
//
//  Created by Jonathan Zhao on 4/7/22.
//

import SwiftUI

struct DirectMessagePage: View {
    var PersonName:String = "Uknown"
    @State var inputText:String = ""
    @State var sampleText: [String] =
    ["Hello there.", "Hey, whats up?", "Have you heard of App Team Carolina?", "No, that sounds interesting. What is it?"]
    var body: some View {
        ZStack{
            Color("Discord_Background")
                .ignoresSafeArea()
            VStack{
                Spacer()
                DirectMessagesContent( sampleText: $sampleText, person:PersonName)
                HStack(alignment:.center){
                    Form{
                        TextField( text: $inputText,
                                   prompt: Text("Enter Text")
                            .bold()
                            .foregroundColor(.white)){
                            
                        }.padding()
                        .border(.primary)
                        .foregroundColor(.white)
                        .background(Color("Discord_TextField"))
                        .listRowBackground(Color("Discord_TextField"))
                        
                            
                            .onSubmit {
                                addText(text:inputText)
                                inputText = ""
                            }
                    }.background(Color("Discord_Background"))
                    .onAppear {
                  UITableView.appearance().backgroundColor = .clear
                    }
                    .frame(height:100)
                    
                }
            }
        }
    }
    
    func addText(text:String){
        sampleText.append(text)
        
    }
}

struct DirectMessagePage_Previews: PreviewProvider {
    static var previews: some View {
        DirectMessagePage()
    }
}


var bottomTextField: some View {
    @State var inputText:String = ""
    
    return Text(inputText)
}
