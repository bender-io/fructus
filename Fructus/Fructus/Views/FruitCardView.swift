//
//  FruitCardView.swift
//  Fructus
//
//  Created by Brian Hersh on 9/24/20.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - Properties
    @State private var isAnimating: Bool = false
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .dropShadow, radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(Color.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .dropShadow, radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            } //: VSTACK
        } //: ZSTACK
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(
                        gradient: Gradient(colors: fruit.gradientColors),
                        startPoint: .top,
                        endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal)
    } //: BODY
}

// MARK: - Preview
struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: FruitData.data[1])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
 
