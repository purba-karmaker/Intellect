//
//  ContentView.swift
//  Intellect
//
//  Created by Prajna Karmaker on 8/25/23.
//

import SwiftUI

struct MainView: View {
    @StateObject var viewModel = MainViewViewModel()
    var body: some View {
       
            if viewModel.isSignedIn, !viewModel.currentUserId.isEmpty {
                TabView{
                    ToDoListView()
                        .tabItem {
                            Label ("Home", systemImage: "house")
                        }
                    ProfileView()
                        .tabItem {
                            Label ("Profile", systemImage: "person.circle")
                        }
                    
                }
            } else{
                LoginView()
            }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
