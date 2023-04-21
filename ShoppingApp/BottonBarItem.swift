//
//  BottonBarItem.swift
//  ShoppingApp
//
//  Created by tolgahan sonmez on 21.04.2023.
//

import Foundation
import SwiftUI
struct bottonBarItem: View {
    var body: some View{
        RoundedRectangle(cornerRadius: 0)
            .foregroundColor(.green)
            .opacity(0.05)
            .overlay{
                HStack{
                    Button(action: {}) {
                        Image(systemName: "house")
                            .font(.title)
                            .foregroundColor(.brown.opacity(0.6))
                    }.padding(.horizontal, 25)
                    Button(action: {}) {
                        Image(systemName: "basket")
                            .font(.title)
                            .foregroundColor(.brown.opacity(0.6))
                    }.padding(.horizontal, 25)
                    Button(action: {}) {
                        Image(systemName: "heart")
                            .font(.title)
                            .foregroundColor(.brown.opacity(0.6))
                    }.padding(.horizontal, 25)
                    Button(action: {}) {
                        Image(systemName: "person")
                            .font(.title)
                            .foregroundColor(.brown.opacity(0.6))
                    }.padding(.horizontal, 25)

                }

        }

    }
}

