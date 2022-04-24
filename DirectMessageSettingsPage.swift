//
//  DirectMessageSettingsPage.swift
//  Discord App Recreation Final Project
//
//  Created by Jonathan Zhao on 4/7/22.
//

import SwiftUI

struct DirectMessageSettingsPage: View {
    
    @State var personName:String
    
    var body: some View {
        //Text("Settings")
        
        VStack{
            
            //Search Pin Notif Bar
            HStack{
                VStack{
                    Image(systemName: "magnifyingglass")
                    Text("Search")
                }
                Spacer()
                VStack{
                    Image(systemName: "pin.fill")
                    Text("Pins")
                }
                Spacer()
                VStack{
                    Image(systemName: "bell.fill")
                    Text("Notifications")
                }
            }
            .padding()
            .font(.title2)
            .foregroundColor(Color("Discord_Text_Normal"))
            .background(Color("Discord_TextField"))
            //Group DMS
            HStack{
                Image(systemName: "person.crop.circle.badge.plus")
                Text("New Group DM").padding()
            }
            .font(.headline)
            .foregroundColor(Color("Discord_Text_Normal"))
            
            //Members
            VStack(alignment: .leading){
                Text("Members -- 2").padding()
                    .font(.headline)
                HStack{//Me
                    Image(systemName: "person")
                    Text("Jonathan Zhao")
                }.padding()
                HStack{//DM person
                    Image(systemName: "person")
                    Text(personName)
                }.padding()
            }
            .foregroundColor(Color("Discord_Text_Main"))
            .padding()
            Spacer()
            
        }
        
    }
}






struct DirectMessageSettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        DirectMessageSettingsPage(personName: "Sam Shi")
    }
}
