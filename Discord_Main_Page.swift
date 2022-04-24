//
//  Discord_Main_Page.swift
//  Discord App Recreation Final Project
//
//  Created by Jonathan Zhao on 4/23/22.
//

import SwiftUI

struct Discord_Main_Page: View {
    @State var personName:String = ""
    @State var page:Bool = true
    
    var body: some View {
        ZStack{
            Color("Discord_Background")
                .ignoresSafeArea()
            VStack{
                directMessageTopBar(page: $page, personName: personName)
                if (page == true){
                    DirectMessagePage(PersonName: personName)
                }
                else{
                    DirectMessageSettingsPage(personName: personName)
                }
                
            }
        }
        
    }
}

struct directMessageTopBar: View {
    @Binding var page:Bool
    var personName:String = ""
    
    var body: some View{
        HStack{
            

            //Name
            Text("@ \(personName)")
                .foregroundColor(Color("Discord_Text_Main"))
            //Status circle
            
            Spacer()
            //Call
            Image(systemName: "phone.arrow.up.right").padding()
            //Video Call
            Image(systemName: "video.fill").padding()
            //People Settings, go to DM setting page
            Button(action: {
                withAnimation{
                    page.toggle()
                }
            }){
                Image(systemName:page ? "person.2": "person.2.fill").padding()
            }
        }
        .font(.title2)
        .foregroundColor(Color("Discord_Text_Normal"))
        .background(Color("Discord_TextField"))
    }
}


struct Discord_Main_Page_Previews: PreviewProvider {
    static var previews: some View {
        Discord_Main_Page()
    }
}

