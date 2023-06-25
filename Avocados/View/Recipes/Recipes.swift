//
//  Recipes.swift
//  Avocados
//
//  Created by kirshi on 6/23/23.
//

import SwiftUI

struct Recipes: View {
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20, content: {
                
                ScrollView(.horizontal, showsIndicators: false){
                    HStack(alignment: .top,spacing: 0) {
                        ForEach(headerData) { item in
                            HeaderView(header: item)
                        }
                    }
                }
                
                Text("Avocado Dishes")
                    .modifier(TitleModifier())
                
                DishesView()
                    .frame(maxWidth: 640)
                
                Text("Avocado Facts")
                    .modifier(TitleModifier())
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60, content: {
                        ForEach(factsData) { item in
                            FactsView(fact: item)
                        }
                    })
                    .padding(.vertical)
                    .padding(.horizontal, 60)
                    .padding(.trailing, 20)
                }
                
                Text("Avocado Recipes")
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipesData) { item in
                        RecipeCardView(recipe: item)
                    }
                }
                .frame(maxWidth: 640)
                .padding(.horizontal)
                
                VStack(alignment: .center, content: {
                    Text("All About Avocados")
                        .modifier(TitleModifier())
                        
                    
                    Text("Everything you wanted to know about avocados but were too afraid to ask")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(Color.gray)
                })
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
                
            })
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .fontWeight(.bold)
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}

struct Recipes_Previews: PreviewProvider {
    static var previews: some View {
        Recipes()
    }
}
