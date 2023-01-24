//  LoginView.swift
//  PlanAR
//
//  Created by Tony Tang on 1/9/23.

import SwiftUI

struct LoginView: View {
    @StateObject private var viewModel = LoginViewModel()
    
    var body: some View {
        ZStack{
            Color("BackgroundColor").ignoresSafeArea()
            VStack {
                Spacer()
                Text("PlanAR")
                    .foregroundColor(Color("TextColor"))
                    .font(.system(size: 72))
                
                HStack{
                    Text("Username:")
                        .font(.system(size: 30))
                        .foregroundColor(Color("TextColor"))
                    TextField("Enter Username", text: $viewModel.username)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                        .foregroundColor(Color("TextColor"))
                }
                .background(
                    Rectangle()
                        .fill(Color("SecondaryColor"))
                        .frame(width: UIScreen.main.bounds.width - 28, height: 50)
                        .cornerRadius(10)
                )
                .padding(20)
                
                HStack{
                    Text("Password:")
                        .font(.system(size: 30))
                        .foregroundColor(Color("TextColor"))
                    SecureField("Enter Password", text: $viewModel.password)
                        .foregroundColor(Color("TextColor"))
                }
                .background(
                    Rectangle()
                        .fill(Color("SecondaryColor"))
                        .frame(width: UIScreen.main.bounds.width - 28, height: 50)
                        .cornerRadius(10)
                )
                .padding(20)
                
                HStack(spacing: 50) {
                    Button("Register") {
                        
                    }
                    .font(.system(size: 24))
                    .foregroundColor(Color("TextColor"))
                    .background(
                        Rectangle()
                            .fill(Color("SecondaryColor"))
                            .frame(width: 100, height: 35)
                            .cornerRadius(10)
                    )
                    
                    Button("Login") {
                       
                    }
                        .font(.system(size: 24))
                        .foregroundColor(Color("TextColor"))
                        .background(
                            Rectangle()
                                .fill(Color("SecondaryColor"))
                                .frame(width: 100, height: 35)
                                .cornerRadius(10)
                        )
                }
                .frame(width: UIScreen.main.bounds.width , height: 40)
                
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
