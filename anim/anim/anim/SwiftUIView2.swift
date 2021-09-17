//
//  SwiftUIView2.swift
//  anim
//
//  Created by user on 17.09.2021.
//

import SwiftUI

struct SwiftUIView2: View {
    @State var xAxisRotation = false
    @State var zAxisRotation = false
    @State var yAxisRotation = false
    
    @State var animation = true
    var body: some View {
        ZStack{
            Color("Pink")
            
            VStack(){
                Button(action: {
                    zAxisRotation.toggle()
                }, label: {
                    Image("logo")
//                        .resizable()
                        //.frame(width: 300, height: 70, alignment: .leading)
//                        .offset(x: -120, y: animation ? -100:80)
                        .animation(Animation.linear(duration: 1).delay(1) )
                        .rotationEffect(.degrees(zAxisRotation ? 360 : 0))
                        .rotation3DEffect(
                            .degrees(80),
                            // менять как анимацию
         //                    Повернуть элемент по z
                            axis: (x: 1.0, y: 0.0, z: 0.0)
                        )
                        .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                })
                Image("drink")
                    .resizable()
                    .frame(width: 481, height: 383, alignment: .center)
                    .offset(x: animation ? 400 : 10, y:0)
                    .animation(Animation.linear(duration: 1) )
                Spacer()
            }
            Image("group2")
                .resizable()
                .frame(width: 390, height: 553, alignment: .center)
                .offset(y: animation ? 800 : 180)
                .animation(Animation.linear(duration: 1).delay(2) )
            
        }.ignoresSafeArea().onAppear{
            self.animation.toggle()
        }
    }
}

struct SwiftUIView2_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView2()
    }
}
