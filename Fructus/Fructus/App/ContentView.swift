//
//  ContentView.swift
//  Fructus
//
//  Created by Brian Hersh on 9/24/20.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - Properties
    var fruits: [Fruit] = FruitData.data
    
    var body: some View {
        NavigationView {
            List {
                ForEach(fruits.shuffled()) { item in
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: FruitData.data)
    }
}
