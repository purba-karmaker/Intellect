//
//  RegisterView.swift
//  Intellect
//
//  Created by Prajna Karmaker on 8/25/23.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var viewModel = RegisterViewViewModel()
    
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
                        Text("Let's get your journey started.")
                            .font(.system(size:23))
                            .bold()
                            .offset(y:-140)
                            //change color
                        Form {
                            TextField("Full Name", text: $viewModel.name).textFieldStyle(DefaultTextFieldStyle())
                                .autocorrectionDisabled()
                                .autocapitalization(.none)
                            TextField("Email Address", text: $viewModel.email).textFieldStyle(DefaultTextFieldStyle())
                                .autocorrectionDisabled()
                                .autocapitalization(.none)
                            SecureField("Create a Password", text: $viewModel.password)
                                .textFieldStyle(DefaultTextFieldStyle())
                            IntellectButton(title: "Create Account", backround: .blue.opacity(0.9)
                            ){
                                viewModel.register()
                                
                            }
                            
                            
                            
                            
                        }
                       
                        .frame(height:240)
                        .offset(y:-100)
                        
                        
                        
                        
                        
                    }
                    
                    
                        
                    }
                    
                }
                
                
            }
            //header
            
    }
}

struct RegisterView_Previews: PreviewProvider {
    static var previews: some View {
        RegisterView()
    }
}
