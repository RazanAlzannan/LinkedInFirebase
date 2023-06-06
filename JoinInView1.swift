//
//  JoinInView1.swift
//  LinkedInFirebase
//
//  Created by Razan Mohammed Alzannan on 16/11/1444 AH.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

struct JoinInView1: View {
    @State var email : String = ""
    @State var password : String = ""
    @State private var showingAlert = false

    var body: some View {
        //autofill & FireBase & Alert & Haptic
        NavigationStack{
            VStack{
                Title().padding(.top,140)
                
                Text("Email").fontWeight(.medium).foregroundColor(.gray).bold().padding(.trailing,305).padding(.top,20)
                TextField(
                    "Add your Secnd name",
                    text: $email).font(.callout)
                    .padding()
                
                Text("Password").fontWeight(.medium).foregroundColor(.gray).bold().padding(.trailing,280).padding(.top,0)
                
                SecureField(
                    "Enter a password",
                    text: $password).font(.callout).padding(.horizontal)
                
                
                Text("By clicking Agree & Join, you agree to LinkedIn's User Agreement, Privacy Policy.")                .padding(.horizontal,20)
                    .padding(.vertical,15)
                    .font(.system(size: 13))
                    .foregroundColor(Color.gray)
                    .multilineTextAlignment(.center)
                
                
                Button("Agree & Join"){
                    if email.isEmpty || password.isEmpty {
                        HapticManager.instance.notification(type: .warning)
                        showingAlert = true
                    }
                    Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                        if error == nil {
                            print("Created Successfully")
                            HapticManager.instance.notification(type: .success)
                        }else {
                            HapticManager.instance.notification(type: .error)
                            print ("Somthing Wrong !")
                        }
                        
                    }
                } .foregroundColor(.white).bold().padding(.horizontal,120).padding(.vertical,13).background(Color("ColorBlue"))
                    .cornerRadius(89)
                    .padding(.bottom,10)
                    .alert("Some Fields are Empty🤨!", isPresented: $showingAlert) {
                        Button("OK", role: .cancel) { }
                    }
                
                Spacer(minLength: 310)
            }
        }
    }
}

struct JoinInView1_Previews: PreviewProvider {
    static var previews: some View {
            JoinInView1()
    }
}
