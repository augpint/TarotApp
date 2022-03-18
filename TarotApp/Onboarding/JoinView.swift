//
//  JoinView.swift
//  TarotApp
//
//  Created by MacOS on 25/02/2022.
//

import Foundation
import SwiftUI

struct JoinView: View {
    @EnvironmentObject var appInfo: AppInformation
    @State var idCheck: String = ""
    @State var passwordCheck: String = ""
    @State var email: String = ""
    @State var birthday: String = ""
    @State private var birthDate = Date()
    
    var body: some View {
        ZStack() {
            VStack() {
                Text("Join")
                    .font(.system(size: 34))
                    .fontWeight(.semibold)
                    .padding(.bottom, 30)
                HStack(){
                    TextField("ID", text: $idCheck)
                        .frame(height: 60)
                    Button(action: {
                        
                    }, label: {
                        Text("Check ID")
                            .fontWeight(.semibold)
                    })
                }
                Divider()
                HStack(){
                    SecureField("Password", text: $passwordCheck)
                        .frame(height: 60)
                    Button(action: {
                        
                    }, label: {
                        Text("Check Password")
                            .fontWeight(.semibold)
                    })
                }
                Divider()
                TextField("Email", text: $email)
                    .frame(height: 60)
                Divider()
                DatePicker(selection: $birthDate, in: ...Date(), displayedComponents: .date) {
                                Text("Birthday")
                                    .frame(height: 60)
                                    .foregroundColor(Color.init(.systemGray2))
                }.padding(.bottom, 8)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Join")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 375, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }).padding(.bottom, 8)
                Button(action: {
                    appInfo.appPage = 0
                }){
                    Text("Back")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 375, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }.padding(.bottom, 8)
                
            }.padding(.init(top: 32, leading: 16, bottom: 200, trailing: 16))
        ///////VStack all
        }
    }
}



struct JoinView_Previews: PreviewProvider {
    static var previews: some View {
        JoinView()
    }
}
