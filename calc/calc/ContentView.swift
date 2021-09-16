//
//  ContentView.swift
//  calc
//
//  Created by user on 15.09.2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color("BackgroundColor")
            VStack(spacing:1) {
                Spacer()
                Text("0")
                    .foregroundColor(.white)
                    .font(.system(size: 90))
                    .fontWeight(.thin)
                    .padding(.horizontal,20)
                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                HStack(spacing:1){
                    Button(action: {
                    }, label: {
                        Text("AC")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("FormatColor"))
                    })
                    Button(action: {
                    }, label: {
                        Image(systemName: "plus.slash.minus")
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.medium))
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("FormatColor"))
                            
                    })
                    Button(action: {
                    }, label: {
                        Text("%")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("FormatColor"))
                    })
                    Button(action: {
                    }, label: {
                        Image(systemName: "divide")
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.medium))
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("OperColor"))
                    })
                }
                HStack(spacing:1){
                    Button(action: {
                    }, label: {
                        Text("7")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                    }, label: {
                        Text("8")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                            
                    })
                    Button(action: {
                    }, label: {
                        Text("9")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                    }, label: {
                        Image(systemName: "multiply")
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.medium))
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("OperColor"))
                    })
                }
                HStack(spacing:1){
                    Button(action: {
                    }, label: {
                        Text("4")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                    }, label: {
                        Text("5")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                            
                    })
                    Button(action: {
                    }, label: {
                        Text("6")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                    }, label: {
                        Image(systemName: "minus")
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.medium))
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("OperColor"))
                    })
                }
                HStack(spacing:1){
                    Button(action: {
                    }, label: {
                        Text("1")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                    }, label: {
                        Text("2")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                            
                    })
                    Button(action: {
                    }, label: {
                        Text("3")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                    }, label: {
                        Image(systemName: "plus")
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.medium))
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("OperColor"))
                    })
                    //.padding(.vertical,1)
                }
                HStack(spacing:1){
                    Button(action: {
                    }, label: {
                        Text("0")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/2-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                    }, label: {
                        Text(",")
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.medium))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                            
                    })
                    Button(action: {
                    }, label: {
                        Image(systemName: "equal")
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.medium))
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("OperColor"))
                    })
                }
            }.frame(width: UIScreen.main.bounds.width, alignment: .trailing)
            
        }.ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewDevice("iPhone 12")

        }
    }
}
