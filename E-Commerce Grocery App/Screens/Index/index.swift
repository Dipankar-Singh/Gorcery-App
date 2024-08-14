//
//  index.swift
//  E-Commerce Grocery App
//
//  Created by Dipankar Singh on 12/08/24.
//

import SwiftUI

struct index: View {
    let data = (1...100).map { "Item \($0)" }
    let columns = [
           GridItem(.flexible()),
           GridItem(.flexible()),
       ]
    let array:[String] = ["Fruits","Bakery","Vegetables","Chicken Meat","Eggs","Vegan Products","Desserts"]
    @State var selectedCategory:Int = 0
    var body: some View {
        VStack{
            
            ScrollView(.horizontal){
                HStack(spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                    ForEach(array.indices,id: \.self){item in
                        Button(action: {
                            selectedCategory = item
                        }, label: {
                            Text(array[item]).padding().background(selectedCategory == item ? .purple : .gray ).cornerRadius(.infinity).foregroundColor(.white)}
                        )
                    }
                })
            }.padding(.leading,8)
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(data, id: \.self) { item in
                        SellingCard()
                    }
                }
                .padding(.horizontal)
            }
            .frame(maxHeight: .infinity)
        }
    }
}

#Preview {
    index()
}
