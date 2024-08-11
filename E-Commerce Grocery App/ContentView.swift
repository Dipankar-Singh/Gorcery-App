//
//  ContentView.swift
//  E-Commerce Grocery App
//
//  Created by Dipankar Singh on 10/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            VStack {
                Image("shopingCart").resizable().scaledToFit()
                Spacer()
                Text("Your grocery needs made simple with a user friendly app for quick and easy shopping.").font(.system(size: 25,weight: .semibold,design: .rounded)).multilineTextAlignment(.center).foregroundColor(.gray)
                Spacer()
                HStack(spacing: 20){
                    NavigationLink(destination: RegisterView()){
                        Text("SignUp").frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                            .padding(.vertical,18)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .font(.system(size: 25,weight: .semibold,design: .rounded))
                            .cornerRadius(.infinity)
                    }
                    NavigationLink(destination: LoginView()){
                        Text("Login").frame(maxWidth: .infinity)
                            .padding(.vertical,18)
                            .background(Color.purple)
                            .foregroundColor(.white)
                            .font(.system(size: 25,weight: .semibold,design: .rounded))
                            .cornerRadius(.infinity)
                    }
                }
            }.padding()
        }
    }
}

#Preview {
    ContentView()
}
