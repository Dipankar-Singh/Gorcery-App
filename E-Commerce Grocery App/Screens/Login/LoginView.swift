//
//  LoginView.swift
//  E-Commerce Grocery App
//
//  Created by Dipankar Singh on 10/08/24.
//

import SwiftUI

struct LoginView: View {
    @State var name:String = ""
    var body: some View {
        NavigationStack{
            Image("shopingCart").resizable().scaledToFit()
            VStack(spacing: 20, content: {
                TextField("", text: $name, prompt: Text("Enter Email"))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 30).stroke(Color.purple, lineWidth: 2))
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                SecureField("", text: $name, prompt: Text("Enter Email"))
                    .padding()
                    .background(RoundedRectangle(cornerRadius: 30).stroke(Color.purple, lineWidth: 2))
                    .font(.system(size: 25, weight: .medium, design: .rounded))
                NavigationLink(destination:index()){
                    Text("Login")
                        .frame(maxWidth: .infinity)
                        .padding(.vertical, 18)
                        .background(Color.purple)
                        .foregroundColor(.white)
                        .font(.system(size: 25, weight: .semibold, design: .rounded))
                        .cornerRadius(.infinity)
                        .padding(.horizontal, 40)
                }
            })
            .padding()
            Spacer()
               
        }
    }
}

#Preview {
    LoginView()
}
