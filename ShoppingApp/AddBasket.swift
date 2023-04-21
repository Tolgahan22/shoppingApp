//
//  AddBasket.swift
//  ShoppingApp
//
//  Created by tolgahan sonmez on 21.04.2023.
//


import Foundation
import SwiftUI

struct AddBasket: View {
    var body: some View{
        RoundedRectangle(cornerRadius: 5)
            .foregroundColor(.green)
            .frame(width:70, height:25)
            .overlay {
                Button("Add") {
                    print("Adding basket")
                }.foregroundColor(.white)
            }
    }
}
