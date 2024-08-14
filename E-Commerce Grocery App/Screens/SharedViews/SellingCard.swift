import SwiftUI

struct SellingCard: View {
    @State var price: Int32 = 10
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.purple)
                .opacity(0.7)
            
            VStack {
                Image("bgRemovedCart")
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity, maxHeight: 130)
                
                HStack(spacing: 10) {
                    Text("$\(price)")
                        .font(.system(size: 35, weight: .semibold))
                        .foregroundColor(.white)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button(action: {
                        // Add action here
                    }) {
                        Text("Add")
                            .font(.system(size: 18, weight: .bold))
                            .padding(.vertical, 10)
                            .padding(.horizontal)
                            .foregroundColor(.purple)
                            .background(Color.white)
                            .cornerRadius(8)
                    }
                    .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: 200)
    }
}

#Preview {
    SellingCard()
}
