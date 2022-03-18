//
//  NavigatonView.swift
//  TarotApp
//
//  Created by MacOS on 25/02/2022.
//

import Foundation
import SwiftUI

// Navigation view LoginView to CreateAccountView and else
struct SharingView: App {
    @StateObject var appInfo = AppInformation()
    var body: some Scene {
        WindowGroup {
            LoginView()
                .environmentObject(appInfo)
        }
        
    }
}
