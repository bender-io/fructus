//
//  FruitRowView.swift
//  Fructus
//
//  Created by Brian Hersh on 9/25/20.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    
    // MARK: - Body
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80, alignment: .center)
                .shadow(color: .dropShadow, radius: 3, x: 2, y: 2)
                .background(
                    LinearGradient(
                        gradient: Gradient(colors: fruit.gradientColors),
                        startPoint: .top,
                        endPoint: .bottom))
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5, content: {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            })
        }
    }
    
    // MARK: - Preview
    struct FruitRowView_Previews: PreviewProvider {
        static var previews: some View {
            FruitRowView(fruit: FruitData.data[2])
                .previewLayout(.sizeThatFits)
                .padding()
        }
    }
}
