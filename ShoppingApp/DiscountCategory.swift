//
//  DiscountCategory.swift
//  ShoppingApp
//
//  Created by tolgahan sonmez on 21.04.2023.
//

import Foundation
import SwiftUI

struct DiscountCategories: View {
    
    @State var imageName : String
    
    var body: some View {
        VStack{
            HStack{
                
                Image("\(imageName)")
                    .resizable()
                    .frame(width: 85, height: 80)
                    .cornerRadius(15)
                    
                         
            }
        }
        
    }
}
