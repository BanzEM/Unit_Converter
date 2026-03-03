//
//  ContentView.swift
//  Unit_Converter
//
//  Created by Bandisile Mazomba on 2026/03/02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var celciusUnit =  25.5
    @State private var tempUnit = "C"
    @State private var tempUnitTo = "K"
    let  kelvinUnit =  273.15
    var tempInKelvin: Double = 0.00
    
    
    let temperatures = ["C", "K", "F"]
    var convertedTo = ["C", "K", "F"]
    
     var temp: Double {
         switch (tempUnit, tempUnitTo) {
         case ("C", "K"):
             return celciusUnit + kelvinUnit
        
         case ("K", "C"):
             return (celciusUnit * 9/5) + 32 + kelvinUnit
             
         case ("C", "F"):
            return  celciusUnit
             
         case ("F", "C") :
             return  celciusUnit
             
         case ("F", "K") :
             return  celciusUnit
             
         case ("K", "F") :
             return  celciusUnit
             
         default:
            return  celciusUnit
         }
         
    }
    
    
    var body: some View {
        NavigationStack{
            Form{
                Section("Temperature in celcius"){
                    HStack{
                        TextField("Enter value in Celcius", value: $celciusUnit, format: .number )
                            .keyboardType(.decimalPad)
                        
                        Picker("", selection: $tempUnit){
                            ForEach(temperatures, id: \.self){
                                Text($0)
                            }
                        }
                    }
                }
                
                Section("Temperature in Kelvin"){
                    HStack{
                        Text("\(temp, specifier: "%.2f")")
                        Picker("", selection: $tempUnitTo){
                            ForEach(temperatures, id: \.self){
                                Text($0)
                            }
                        }
                    }
                    
                }.navigationTitle("Unit Converter")
                    .navigationBarTitleDisplayMode(.inline)
            }
        }
    }
}

#Preview {
    ContentView()
}
