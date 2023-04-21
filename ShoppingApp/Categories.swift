//
//  Categories.swift
//  ShoppingApp
//
//  Created by tolgahan sonmez on 21.04.2023.
//

import Foundation
import SwiftUI

struct Categories: View{
    @State private var cate = ["Ev Elektroniği", "Bilgisayar", "Mobilya","Ev Gereçleri","Hobi", "Mutfak", "Ayakkabı","Kıyafet", "Müzik",]
    var body: some View{
        
        ScrollView{
            ForEach(self.cate, id:\.self) {
                cates in
                HStack{
                    Text(cates).foregroundColor(.brown)
                    Spacer()
                    Image(systemName: "chevron.right.circle.fill")
                        
                }.font(.system(size: 24, weight: .bold, design: .rounded))
                    .padding()
                    .cornerRadius(5)
                    .background(.green.opacity(0.08))
                    .shadow(radius: 10)
            }
            
            
        }
        
    }
}

