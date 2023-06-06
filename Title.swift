//
//  Title.swift
//  LinkedInFirebase
//
//  Created by Razan Mohammed Alzannan on 17/11/1444 AH.
//

import SwiftUI

struct Title: View {
    var body: some View {
        VStack{
            Image("Image 2").resizable().frame(width: 110 ,height: 29).padding(.bottom,60).padding(.trailing, 250)
            Text("Join LinkedIn")
                .font(.system(size: 30))
                .fontWeight(.bold).padding(.trailing,170)
            HStack{
                Text("or").foregroundColor(.gray)
                Text("Sign in").foregroundColor(Color("ColorBlue")).bold().padding(.trailing,270)
            }
        }
    }
}

struct Title_Previews: PreviewProvider {
    static var previews: some View {
        Title()
    }
}
