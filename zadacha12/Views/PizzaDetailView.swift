//
//  PizzaDetailView.swift
//  zadacha12
//
//  Created by Slava Havvk on 28.11.2021.
//

import SwiftUI

struct PizzaDetailView: View {
    
    var recipe:Recipe
    
    var body: some View {
        ScrollView {
            
            VStack(alignment: .leading) {
            //    Text(recipe.name)
                //MARK: Recipe image
                Image(recipe.image)
                    .resizable()
                    .scaledToFill()
                
                //MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                    
                    ForEach (recipe.toppings, id:\.self) { item in
                        Text("---" + item)
                        
                    }
                
                
                }
                .padding(.leading)
                
            }
            
            
            //MARK: Directions
            
        }
        .navigationBarTitle(recipe.name)
    }
}

struct PizzaDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        PizzaDetailView(recipe: model.recipes[0])
    }
}
