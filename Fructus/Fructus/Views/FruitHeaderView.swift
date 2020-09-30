//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Brian Hersh on 9/30/20.
//

import SwiftUI

struct FruitHeaderView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    @State var isAnimatingImage: Bool = false
    
    // MARK: Body
    var body: some View {
        ZStack {
            LinearGradient(
                gradient: Gradient(colors: fruit.gradientColors),
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .dropShadow, radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }
        .frame(height: 440)
        .onAppear() {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimatingImage = true
            }
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: FruitData.data[0])
            .previewLayout((.fixed(width: 375, height: 440)))
    }
}
