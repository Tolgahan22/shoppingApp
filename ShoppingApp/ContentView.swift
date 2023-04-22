//
//  ContentView.swift
//  ShoppingApp
//
//  Created by tolgahan sonmez on 21.04.2023.
//

import SwiftUI

struct ContentView: View {
    @State public var ChoosenPage = 5
    @State private var searchText = ""
    var body: some View {
        TabView(selection: $ChoosenPage){
            ScrollView{
                VStack {
                    HStack{
                        
                        Image("greenLogo")
                            .resizable()
                            .frame(width: 70, height: 60)
                            .padding(.leading, 5)
                        SearchBar(text: $searchText)
                    }
                    
                    AdScrollView()
                    
                    HStack {
                        DiscountCategories(imageName: "orgu")
                        DiscountCategories(imageName: "orgu")
                        DiscountCategories(imageName: "orgu")
                        DiscountCategories(imageName: "orgu")
                    }
                    
                    HStack {
                        DiscountCategories(imageName: "orgu")
                        DiscountCategories(imageName: "orgu")
                        DiscountCategories(imageName: "orgu")
                        DiscountCategories(imageName: "orgu")
                    }.padding(.vertical)
                    
                    ProductPreview()
                    
                    AdScrollView2()
                    ProductPreview()
                    
                }
            }.background(Color("colorzzz"))
                .tabItem{
                    Image(systemName: "house")
                        
                }.tag(1)
           
            
            
            //CategoriesPage
            VStack{
                Text("Categories").font(.largeTitle).bold()
                    
                Categories()
                //Pagecode
                
            }
            .tabItem{
                Image(systemName: "chart.bar.doc.horizontal")
            }.foregroundColor(.secondary)
            
                .tag(2)
               
            
            
            
            // BasketPage
            VStack{
                Text("Basket")
                //Pagecode
                
            }.tabItem{
                Image(systemName: "basket")
            }.foregroundColor(.red)
                .tag(3)
               
            
            
            
            
            //fovarites page
            VStack{
                Text("Fovarites")
                //Pagecode
                
            }.tabItem{
                Image(systemName: "heart")
            }.foregroundColor(.red)
                .tag(4)
            
            
            
                // User Page
            VStack{
                userScreen()
                
            }
            .tabItem{
                Image(systemName: "person")
            }
                
                .tag(5)
                
 
            
            
        }.accentColor(.green)
            
            
            
        }
        
    }


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
