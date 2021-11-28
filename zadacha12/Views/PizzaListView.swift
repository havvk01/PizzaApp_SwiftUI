//
//  ContentView.swift
//  zadacha12
//
//  Created by Slava Havvk on 22.11.2021.
//

import SwiftUI

struct PizzaListView: View {
    
    @ObservedObject var model = RecipeModel()
    
    var body: some View {

        NavigationView {
            List(model.recipes) { r in
                
                NavigationLink(destination: PizzaDetailView(recipe:r), label: {
                    HStack(){
                        Image(r.image)
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 60, height: 60)
                        .clipped()
                        .cornerRadius(5)

                        VStack(alignment: .leading) {
                                Text(r.name).font(.title)
                                HStack {
                                    ForEach (r.toppings, id: \.self) { index in
                                        Text(index)
                                    }
                                }
                            
                        }
                    }
                } )
                
                
            }
            .navigationBarTitle("All Recipes")
        }
    }
}
                
//        ScrollView {
 //           VStack(alignment: .leading){
 
//                ForEach(model.recipes) { r in
//
//                    HStack(){
//                        Image(r.image)
//                            .resizable()
//                            .aspectRatio(contentMode: .fill)
//                            .frame(width: 60, height: 60)
//                            .clipped()
//                            .cornerRadius(5)
//
//
//                        VStack(alignment: .leading) {
//                            Text(r.name).font(.title)
//                            HStack {
//                                ForEach (r.toppings, id: \.self) { index in
//                                    Text(index)
//                                }
//    //
//    //                            Text(String(r.toppings.count))
//    //                            Text(r.toppings[0]);Text(r.toppings[1]);Text(r.toppings[2])
//                            }
//
//                        }

        
        
        

struct PizzaListView_Previews: PreviewProvider {
    static var previews: some View {
        PizzaListView()
    }
}

//Image(r.image).resizable().scaledToFill().frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/).clipped().cornerRadius(5)
//Text(r.name)
