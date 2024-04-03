//
//  ContentView.swift
//  ImageSymbols
//
//  Created by Luis on 3/4/24.
//

//This project need SFSymbols 5.1

import SwiftUI

struct ContentView: View {
    @State private var colorChange = false
    @State private var sizeChange = false
    
    var body: some View {
        Image(systemName: "heart.fill")
            .font(.system(size: 200))
            .foregroundColor(colorChange ? .yellow : .red) //Operador Ternario
            .scaleEffect(sizeChange ? 1.5 : 1) //Operador Ternario
            //.animation(.default)
            .onTapGesture {
                self.colorChange.toggle()
            }
            .onLongPressGesture {
                self.sizeChange.toggle()
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
