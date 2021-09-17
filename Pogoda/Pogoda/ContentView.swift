//
//  ContentView.swift
//  Pogoda
//
//  Created by user on 17.09.2021.
//

import SwiftUI
import Alamofire
import SwiftyJSON

struct ContentView: View {
    @State var city = ""
    @State var temp = ""
    var body: some View {
        ZStack{
            Color("BackGround")
            VStack
            {
                Text(temp)
                    //.font(.system(size: 40))
                    .font(.largeTitle)
                    .foregroundColor(.black)
                TextField("London", text: $city)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .font(.system(size: 40))
                Button(action: {
                    let url = "http://api.weatherapi.com/v1/current.json?key=ee170084c26b442da7882229211709&q=\(city)&aqi=no"
                    AF.request(url, method: .get).validate().responseJSON { response in
                        switch response.result {
                        case .success(let value):
                            let json = JSON(value)
                            print("JSON: \(json)")
                            temp = json["current"]["temp_c"].stringValue + " C"
                        case .failure(let error):
                            print(error)
                        }
                    }

                }, label: {
                    Text("Запросить")
                        .font(.system(size: 40))
                        .foregroundColor(.black)
                        .fontWeight(.bold)
                        .background(Color("FormatColor"))
                        
                })
            }
            
        }.ignoresSafeArea()
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
