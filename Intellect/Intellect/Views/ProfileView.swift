//
//  ProfileView.swift
//  Intellect
//
//  Created by Prajna Karmaker on 8/25/23.
//

import SwiftUI

struct ProfileView: View {
    @StateObject var viewModel = ProfileViewViewModel()
    var body: some View {
        NavigationView{
            VStack{
                if let user = viewModel.user {
                    //avatar
                    Image(systemName: "person.circle")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(Color.blue)
                        .frame(width: 125, height: 125)
                        .padding()
                    //info: name, email
                    VStack(alignment: .leading){
                        HStack{
                            Text("Name:")
                                .bold()
                            Text(user.name)

                        }
                        HStack{
                            Text("Email:")
                                .bold()
                            Text(user.email)

                        }
                        HStack{
                            Text("Member since:")
                                .bold()
                            Text("\(Date(timeIntervalSince1970: user.joined).formatted(date: .abbreviated, time: .omitted))")

                        }
                    }
                    .padding()
                    
                    Button("Log Out") {
                        viewModel.logout()
                    }
                    .tint(.red)
                } else{
                    Text("Loading Profile...")
                }
            }
            .navigationTitle("Profile")
        }
        .onAppear{
            viewModel.fetchUser()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
