//
//  SwiftUIView.swift
//  anim
//
//  Created by user on 17.09.2021.
//

import SwiftUI

struct SwiftUIView: View {
    @State var animation = true
    //@State var x:CGFloat = -400
    var body: some View {
        ZStack{
            Color("Pink")
            
            VStack(){
                Image("hand")
                    .frame(width: 368, height: 256, alignment: .center)
                    //.padding(.vertical,50)
                    .offset(x: animation ? -400 : -25, y:-130)
                    .animation(Animation.linear(duration: 1).delay(1) )
                Image("drink")
                    .frame(width: 375, height: 307, alignment: .center)
                    .offset(x: animation ? 400 : 10, y:-130)
                    .animation(Animation.linear(duration: 1) )
            }
            Image("group")
                .frame(width: 297, height: 567, alignment: .center)
                .offset(y:70)
                .opacity(animation ? 0:1)
                .animation(Animation.linear(duration: 1).delay(2) )
            
        }.ignoresSafeArea().onAppear{
            self.animation.toggle()
        }

    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
            .previewDevice("iPhone 12")
    }
}
