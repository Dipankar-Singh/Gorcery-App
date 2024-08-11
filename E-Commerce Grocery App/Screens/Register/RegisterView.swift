//
//  RegisterView.swift
//  E-Commerce Grocery App
//
//  Created by Dipankar Singh on 10/08/24.
//

import SwiftUI

struct RegisterView: View {
    @State var name:String = ""
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading, spacing: 10) {
                Spacer()
                Text("Create Your \n Account")
                    .font(.system(size: 40, weight: .semibold, design: .rounded))
                    .padding(.leading, 5)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                Spacer()
                VStack(spacing: 20, content: {
                    Spacer()
                    TextField("", text: $name, prompt: Text("Enter Email").foregroundColor(.white))
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 2))
                        .font(.system(size: 25, weight: .medium, design: .rounded))
                    TextField("", text: $name, prompt: Text("Enter Email").foregroundColor(.white))
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 2))
                        .font(.system(size: 25, weight: .medium, design: .rounded))
                    TextField("", text: $name, prompt: Text("Enter Email").foregroundColor(.white))
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 2))
                        .font(.system(size: 25, weight: .medium, design: .rounded))
                    TextField("", text: $name, prompt: Text("Enter Email").foregroundColor(.white))
                        .padding()
                        .foregroundColor(.white)
                        .background(RoundedRectangle(cornerRadius: 30).stroke(Color.white, lineWidth: 2))
                        .font(.system(size: 25, weight: .medium, design: .rounded))
                    NavigationLink(destination: LoginView()) {
                        Text("Submit")
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 18)
                            .background(Color.white)
                            .foregroundColor(.purple)
                            .font(.system(size: 25, weight: .semibold, design: .rounded))
                            .cornerRadius(.infinity)
                            .padding(.horizontal, 40)
                            .padding()
                    }
                    Spacer()
                }).padding().ignoresSafeArea()
                    .background(.purple).clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
                
            }
            .ignoresSafeArea(edges:.bottom)
            
        }
    }
}

#Preview {
    RegisterView()
}

