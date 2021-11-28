//
//  RecipeModel.swift
//  zadacha7
//
//  Created by Slava Havvk on 22.11.2021.
//

import Foundation

class RecipeModel: ObservableObject {
    
    @Published  var recipes = [Recipe]()
    
    init () {
        let pathString = Bundle.main.path(forResource: "pizza", ofType: "json")
        
        if let path = pathString {
            
            //create a URL object
            let url = URL(fileURLWithPath: path)
            
                //error handling
            do {
                //put the code that potentially throws an error
                
                //create a data object with the data at the url
                let data = try Data(contentsOf: url)
                
                //Parse the data
                let decoder = JSONDecoder()
                
                do {
                    let recipeData = try decoder.decode([Recipe].self, from: data)
                    
                    for r in recipeData {
                    //Set unique IDs for each instance
                        r.id = UUID()
                    }
                    //Assign the datat to the publushed property
                    self.recipes = recipeData
                }
                
                catch {
                    //Log could't decode json
                    print(error)
                }
                
            }
            catch {
                //Execution will come here if an error is throw
                //Handle error
                print(error)
            }
            
        }
//        var recipe = Recipe()
//        recipe.name = "Spaghetti"
//        recipe.cuisine = "Italy"
//верхняя строка эквивалентна нижней

//        var recipe = Recipe(name: "Spaghetti", cuisine: "Italy")
//        recipes.append(recipe)
//либо сразу объединить в одну строку:
//        recipes.append(Recipe(name: "Spaghetti", cuisine: "Italy"))
//        recipes.append(Recipe(name: "Sushi", cuisine: "Japanese"))
    }
    
    func addRecipe() {
//        recipes.append(Recipe(name: "Burger", cuisine: "American"))
    }
}
