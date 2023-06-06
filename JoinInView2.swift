//
//  JoinInView2.swift
//  LinkedInFirebase
//
//  Created by Razan Mohammed Alzannan on 16/11/1444 AH.
//

import SwiftUI

struct JoinInView2: View {
    @State var firstName : String = ""
    @State var secondName : String = ""
    @State private var showingAlert = false
    var body: some View {
        //autofill & Alert & Haptic
        NavigationStack{
            VStack {
                Title().padding(.top,10)
                
                Text("First Name").fontWeight(.medium).foregroundColor(.gray).bold().padding(.trailing,273).padding(.top,20)
                TextField(
                    "Add your fisrt name",
                    text: $firstName
                ).font(.callout)
                    .padding()
                
                Text("Second Name").fontWeight(.medium).foregroundColor(.gray).bold().padding(.trailing,250).padding(.top,5)
                TextField(
                    "Add your Secnd name",
                    text: $secondName
                ).font(.callout)
                    .padding()
                
                
                
                
                NavigationLink{JoinInView1()} label :{
                    Button("Continue"){
                        if firstName.isEmpty || secondName.isEmpty {
                            HapticManager.instance.notification(type: .warning)
                            showingAlert = true
                            
                        }
                    } .foregroundColor(.white).bold().padding(.horizontal,120).padding(.vertical,13).background(Color("ColorBlue"))
                        .cornerRadius(89)
                        .padding(.bottom,190)
                        .alert("Some Fields are Empty🤨!", isPresented: $showingAlert) {
                            Button("OK", role: .cancel) { }
                        }
                    
                }
            }
        }
    }
    }


struct JoinInView2_Previews: PreviewProvider {
    static var previews: some View {
        JoinInView2()
    }
}
