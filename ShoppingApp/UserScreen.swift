//
//  UserScreen.swift
//  ShoppingApp
//
//  Created by tolgahan sonmez on 22.04.2023.
//

import Foundation
import SwiftUI
import FirebaseAuth




struct userScreen: View{
    @State var Email = ""
    @State var Pass = ""
    @State var userName = ""
    @State var page = ""
    var body: some View{
       
            Text("Email").font(.title).bold()
        
        TextField("Email", text: $Email)

        Text("Password").font(.title).bold()
                TextField("Password", text: $Pass)
        Text("Kullanıcı Adı").font(.title).bold()
    
    TextField("Kullanıcı Adı", text: $userName)
        HStack{
            Button("Giriş") {
                Auth.auth().signIn(withEmail: self.Email, password: self.Pass) { result, error in
                    if error != nil{
                        print(error?.localizedDescription  as Any)
                    }else{

                    }
                }
            }.font(.title).bold().accentColor(.blue).padding(.horizontal, 60)
            Button("Kayıt ol") {
                Auth.auth().createUser(withEmail: self.Email, password: self.Pass) { result, error in
                    if error != nil{
                        print(error?.localizedDescription as Any)
                    }else{
                        
                    }
                }
            }.font(.title2).bold().accentColor(.blue).opacity(0.6)
        }
    }
}

