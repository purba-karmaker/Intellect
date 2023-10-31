//
//  LoginView.swift
//  Intellect
//
//  Created by Prajna Karmaker on 8/25/23.
//

import SwiftUI

struct LoginView: View {
    @StateObject var viewModel = LoginViewViewModel()
    
    var body: some View {
        VStack{
            NavigationView{
                ZStack{
                    Color(#colorLiteral(red: 0, green: 0.6970558167, blue: 0.9944515824, alpha: 1))
                        .ignoresSafeArea()
                    Circle()
                        .scale(1.8)
                        .foregroundColor(.white.opacity(0.8))
                    Circle()
                        .scale(1.6)
                        .foregroundColor(.white)
                    VStack{
                        Image("intellect")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 275, height: 300)
                            .offset(y:-40)
                        Text("Find your path.")
                            .font(.system(size:23))
                            .bold()
                            .offset(y:-140)
                            //change color
                        
                        
                        Form {
                            TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle())
                                .autocorrectionDisabled()
                                .autocapitalization(.none)
                            SecureField("Password", text: $viewModel.password).textFieldStyle(DefaultTextFieldStyle())
                                .autocorrectionDisabled()
                                .autocapitalization(.none)
                            IntellectButton(title: "Log In", backround: .blue){
                                viewModel.login()
                            
                            
                            }
                            if !viewModel.errorMessage.isEmpty {
                                Text(viewModel.errorMessage)
                                    .foregroundColor(Color.red)
                            }
                        }
                        
                       
                        .frame(height:220)
                        .offset(y:-100)
                        
                        
                        
                        
                        
                    }
                    
                    VStack{
                        NavigationLink("Create an Account", destination: RegisterView())
                            
                        }
                        .bold()
                        .padding(.top,420)
                        
                    }
                    
                }
                
                
            }
            //header
            
        }
    }
    
    
    struct LoginView_Previews: PreviewProvider {
        static var previews: some View {
            LoginView()
        }
    }

