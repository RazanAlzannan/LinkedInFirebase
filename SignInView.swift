//
//  SignInView.swift
//  LinkedInFirebase
//
//  Created by Razan Mohammed Alzannan on 16/11/1444 AH.
//

import SwiftUI

struct SignInView: View {
    var body: some View {
        //autofill and if and haptic , check if it is in the in firebase
        NavigationStack { VStack{
            Title().padding(.top,10)
            Text("Email").fontWeight(.medium).foregroundColor(.gray).bold().padding(.trailing,315).padding(.top,20)
            Rectangle().frame(width:360 ,height: 40).foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.gray, lineWidth: 1).frame( maxWidth: 1000 ,maxHeight: 40)).padding(.bottom,2)
            
            Text("Password").fontWeight(.medium).foregroundColor(.gray).bold().padding(.trailing,280).padding(.top,5)
            
            Rectangle().frame(width:360 ,height: 40).foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(.gray, lineWidth: 1).frame( maxWidth: 1000 ,maxHeight: 40)).padding(.bottom, 15)
            
            Text("Forgot Password?").frame(maxWidth: .infinity).font(.system(size: 13))
                .foregroundColor(Color("ColorBlue"))
                .multilineTextAlignment(.center)
                .padding([.leading, .bottom]).frame(maxWidth: .infinity,maxHeight: 30)
            
            NavigationLink("Sign in"){
                //if  exeist in the firebase or not
            }.padding(.all)
                .foregroundColor(Color.white)
                .font(.system(size: 18))
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity,maxHeight: 40)
                .background(Color("ColorBlue"))
                .cornerRadius(89).padding(.horizontal).padding(.bottom,30)
            ///
            Button("Continue with Apple"){
            }.frame(width:360 ,height: 40).foregroundColor(.gray)
                .overlay(
                    RoundedRectangle(cornerRadius: 89)
                        .stroke(.gray, lineWidth: 1).frame( maxWidth: 1000 ,maxHeight: 40)).padding(3)
    
        }
            Button("Continue with Google"){
            }.frame(width:360 ,height: 40).foregroundColor(.gray)
                .overlay(
                    RoundedRectangle(cornerRadius: 89)
                        .stroke(.gray, lineWidth: 1).frame( maxWidth: 1000 ,maxHeight: 40)).padding(.bottom,100)
    }
    }
    }


struct SignInView_Previews: PreviewProvider {
    static var previews: some View {
        SignInView()
    }
}
