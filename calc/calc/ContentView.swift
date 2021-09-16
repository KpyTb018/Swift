//
//  ContentView.swift
//  calc
//
//  Created by user on 15.09.2021.
//

import SwiftUI

struct ContentView: View {
    // state - если что то меняется в переменной, то нужно менять интерфейс
    @State var number = "0"
    @State var alert = false
    @State var znak = true
    @State var operation = ""
    @State var point = false
    @State var decision = false
    @State var result: Float = 0
    var body: some View {
        ZStack{
            Color("BackgroundColor")
            VStack(spacing:1) {
                Spacer()
                Text(number)
                    .foregroundColor(.white)
                    .font(.system(size: 80))
                    .fontWeight(.thin)
                    .lineLimit(1)
                    .padding(.horizontal,20)
                    .frame(width: UIScreen.main.bounds.width, alignment: .trailing)
                HStack(spacing:1){
                    Button(action: {
                        number = "0"
                        point = false
                        decision = false
                    }, label: {
                        Text("AC")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("FormatColor"))
                    })
                    Button(action: {
                        
                        /*if znak == true {
                            number.insert("-", at: number.startIndex)
                            znak = false
                        }
                        else {
                            number.removeFirst()
                            znak = true
                        }*/
                        if number.contains("-") {
                            number.removeFirst()
                        }
                        else {
                            number = "-" + number
                        }
                    }, label: {
                        Image(systemName: "plus.slash.minus")
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.medium))
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("FormatColor"))
                            
                    })
                    Button(action: {
                        number = String(Float(number)!/100)
                    }, label: {
                        Text("%")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("FormatColor"))
                    })
                    Button(action: {
                        operation = "/"
                        result = result / Float(number)!
                        number = "0"
                        point = false
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
                        if number == "0" || decision == false{
                            number = "7"
                            decision = true
                        }
                        else {
                            number.append("7")
                        }
                    }, label: {
                        Text("7")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                        if number == "0" || decision == false{
                            number = "8"
                            decision = true
                        }
                        else {
                            number.append("8")
                        }
                    }, label: {
                        Text("8")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                            
                    })
                    Button(action: {
                        if number == "0" || decision == false{
                            number = "9"
                            decision = true
                        }
                        else {
                            number.append("9")
                        }
                    }, label: {
                        Text("9")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                        operation = "*"
                        result = result * Float(number)!
                        number = "0"
                        point = false
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
                        if number == "0" || decision == false{
                            number = "4"
                            decision = true
                        }
                        else {
                            number.append("4")
                        }
                    }, label: {
                        Text("4")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                        if number == "0" || decision == false{
                            number = "5"
                            decision = true
                        }
                        else {
                            number.append("5")
                        }
                    }, label: {
                        Text("5")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                            
                    })
                    Button(action: {
                        if number == "0" || decision == false{
                            number = "6"
                            decision = true
                        }
                        else {
                            number.append("6")
                        }
                    }, label: {
                        Text("6")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                        operation = "-"
                        result = result - Float(number)!
                        number = "0"
                        point = false
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
                        if number == "0" || decision == false{
                            number = "1"
                            decision = true
                        }
                        else {
                            number.append("1")
                        }
                    }, label: {
                        Text("1")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                        if number == "0" || decision == false{
                            number = "2"
                            decision = true
                        }
                        else {
                            number.append("2")
                        }
                    }, label: {
                        Text("2")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                            
                    })
                    Button(action: {
                        if number == "0" || decision == false{
                            number = "3"
                            decision = true
                        }
                        else {
                            number.append("3")
                        }
                    }, label: {
                        Text("3")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                        operation = "+"
                        result = result + Float(number)!
                        number = "0"
                        point = false
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
                        if number == "0" || decision == false{
                            number = "0"
                            decision = true
                        }
                        else {
                            number.append("0")
                        }
                    }, label: {
                        Text("0")
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/2-1, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                    })
                    Button(action: {
                        if point == false {
                            number.append(".")
                            point = true
                        }
                    }, label: {
                        Text(",")
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.medium))
                            .fontWeight(.medium)
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("ButtonsColor"))
                            
                    })
                    Button(action: {
                        switch operation {
                        case "/":
                            result = result / Float(number)!
                        case "*":
                            result = result * Float(number)!
                        case "-":
                            result = result - Float(number)!
                        case "+":
                            result = result + Float(number)!
                        default:
                            break
                        }
                        /*
                        if result - result.rounded() == 0 {
                            number = String(Int(result))
                        }
                        else {
                            number = String(result)
                        }
                        */
                        number = result - result.rounded() == 0 ? String(Int(result)) : String(result)
                        
                        operation = ""
                        result = 0
                        decision = false
                    }, label: {
                        Image(systemName: "equal")
                            .foregroundColor(.white)
                            .font(.system(size: 40,weight:.medium))
                            .frame(width: UIScreen.main.bounds.width/4, height: UIScreen.main.bounds.width/4-1, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .background(Color("OperColor"))
                    })
                }
            }.frame(width: UIScreen.main.bounds.width, alignment: .trailing)
            .alert(isPresented: $alert, content: {
                Alert(title: Text("Error"), message: Text("def"), dismissButton: .cancel())
            })
            .onChange(of: number, perform: { value in
                if number.count > 7 {
                    alert.toggle()
                    number.removeLast()
                }
            })
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
