//
//  AdScrollView2.swift
//  ShoppingApp
//
//  Created by tolgahan sonmez on 21.04.2023.
//

import Foundation
import SwiftUI

struct AdScrollView2 : View{
    
    @State private var colorz : [Color] = [.purple, .pink, Color(red: 128, green: 0, blue: 32), .cyan]
    
    var body: some View{
            VStack {
                ScrollView(Axis.Set.horizontal, showsIndicators: false){
                    HStack{
                        ForEach(self.colorz, id: \.self) { col in
                            RoundedRectangle(cornerRadius: 15)
                                .fill(col)
                                .frame(width: 340, height: 150, alignment: .trailing)
                                
                        }
                    }
                }.padding()
            }

        
        
    }
}
