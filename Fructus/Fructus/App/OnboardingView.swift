//
//  OnboardingView.swift
//  Fructus
//
//  Created by Brian Hersh on 9/24/20.
//

import SwiftUI

struct OnboardingView: View {
        
    // MARK: - Properties
    var fruits: [Fruit] = FruitData.data
    
    // MARK: - Body
    var body: some View {
        TabView {
            ForEach(fruits[0...5]) { (item) in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20) 
    }
}

// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: FruitData.data)
    }
}
