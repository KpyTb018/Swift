//
//  ContentView.swift
//  anim
//
//  Created by user on 16.09.2021.
//

import SwiftUI

struct ContentView: View {
    @State var animation = false
    @State var opacity = 1.0
    
    var body: some View {
        ZStack{
            Color("Blue")
            VStack{
                Image("Bird")
                    //.font(.system(size: 500))
                    .scaleEffect(animation ? 5:1,anchor: .center)
                    .animation(Animation.linear(duration: 2), value: animation)
                    .opacity(self.opacity)
                    .animation(Animation.linear(duration: 1).delay(1), value: self.opacity)
            }.onAppear{
                self.animation.toggle()
                if opacity == 0 {
                    opacity = 1
                }
                else {
                    opacity = 0
                }
            }
        }.ignoresSafeArea()
        .opacity(self.opacity)
        .animation(Animation.linear(duration: 1).delay(1), value: self.opacity)
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
