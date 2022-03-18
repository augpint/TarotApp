//
//  HomeView.swift
//  TarotApp
//
//  Created by MacOS on 23/02/2022.
//

import SwiftUI

struct LoginView: View {
    @State var id: String = ""
    @State var password: String = ""
    
    @EnvironmentObject var appInfo: AppInformation

    var body: some View {
        if appInfo.appPage == 0 {
        ZStack() {
            VStack() {
                Text("Login")
                    .font(.system(size: 34))
                    .fontWeight(.semibold)
                    .padding(.bottom, 8)
                TextField("ID", text: $id)
                    .frame(width: 375, height: 60)
                Divider()
                SecureField("Password", text: $password)
                    .frame(width: 375, height: 60)
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("Login")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 375, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }).padding(.bottom, 8)
                Button(action: {
                    appInfo.appPage = 1
                }){
                    Text("Join")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .frame(width: 375, height: 50)
                        .background(Color.blue)
                        .cornerRadius(15.0)
                }
            Spacer()
            }.padding(.init(top: 32, leading: 16, bottom: 0, trailing: 16))
        ///////VStack all
        }
        } else {
            JoinView()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView().environmentObject(AppInformation())
    }
}

class AppInformation: ObservableObject {
    @Published var appPage = 0
    @Published var TextShared = ""
}
