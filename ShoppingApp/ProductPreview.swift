//
//  ProductPreview.swift
//  ShoppingApp
//
//  Created by tolgahan sonmez on 21.04.2023.
//

import Foundation
import SwiftUI

struct ProductPreview: View {
    
    @State private var usedImages = ["orgu", "orgu", "orgu", "orgu", "orgu", "orgu", "orgu", "orgu", "orgu", "orgu"]
    
    var body: some View{
            VStack {
                Text("Son gezilen ürünler").bold()
                ScrollView(Axis.Set.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(self.usedImages, id: \.self) { usedImage in
                            RoundedRectangle(cornerRadius: 15)
                                .stroke()
                                .frame(width: 120, height: 200)
                                //.padding(.leading, 22)
                                .overlay {
                                    VStack{
                                        Text("Örgü Pipiringa Beş Numara Tığ İle Beraber").lineLimit(2).fixedSize(horizontal: false, vertical: true)
                                        Image("orgu").resizable().frame(width: 60, height: 60, alignment: .center)
                                        Text("4999.0")
                                        AddBasket()
                                    }
                                }//.padding(.horizontal)
                        }
                    }
                }.padding()
            }

        
        
    }
}
