//
//  IntellectApp.swift
//  Intellect
//
//  Created by purba Karmaker on 8/25/23.
//
import FirebaseCore
import SwiftUI

@main
struct IntellectApp: App {
    
    init(){
        FirebaseApp.configure()
        
    }
    
    var body: some Scene {
        WindowGroup {
            MainView()
        }
    }
}
