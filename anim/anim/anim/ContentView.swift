//
//  ContentView.swift
//  anim
//
//  Created by user on 16.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State var animation = false
    
    var body: some View {
        ZStack{
            Color("Blue")
            
            VStack{
                Image("Bird")
                    .font(.system(size: 80))
            }
        }.ignoresSafeArea()
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
