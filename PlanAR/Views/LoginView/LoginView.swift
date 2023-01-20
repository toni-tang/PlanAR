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
                Spacer()
                HStack{
                    Text("Username:")
                        .font(.system(size: 30))
                        .foregroundColor(Color("TextColor"))
                    TextField("Enter Username", text: $viewModel.username)
                        .autocapitalization(.none)
                        .autocorrectionDisabled()
                        .foregroundColor(Color("TextColor"))
                }
                    .background(Color("SecondaryColor"))
                    .cornerRadius(10)
                    .padding(20)
                HStack{
                    Text("Password:")
                        .font(.system(size: 30))
                        .foregroundColor(Color("TextColor"))
                    SecureField("Enter Password", text: $viewModel.password)
                        .foregroundColor(Color("TextColor"))
                }
                    .background(Color("SecondaryColor"))
                    .cornerRadius(10)
                    .padding(20)
                HStack{
                    Button("Register") {
                        print("wow")
                    }
                        .font(.system(size: 24))
                        .foregroundColor(Color("TextColor"))
                        .background(Color("SecondaryColor"))
                        .cornerRadius(5)
                    Button("Login")     {
                        print("wow")
                    }
                        .font(.system(size: 24))
                        .foregroundColor(Color("TextColor"))
                        .background(Color("SecondaryColor"))
                        .cornerRadius(5)
                }
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
