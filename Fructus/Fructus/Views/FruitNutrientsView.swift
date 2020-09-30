//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Brian Hersh on 9/30/20.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // MARK: - Properties
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - Body
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutitional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                                .foregroundColor(fruit.gradientColors[1])
                                .font(Font.system(.body).bold())
                            
                            Text(nutrients[item])
                        }
                        Spacer(minLength: 25)
                        
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: FruitData.data[0])
            .preferredColorScheme(.dark)
            .previewLayout((.fixed(width: 375, height: 480)))
            .padding()
    }
}
