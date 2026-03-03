//
//  ContentView.swift
//  Unit_Converter
//
//  Created by Bandisile Mazomba on 2026/03/02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var celciusUnit =  0.0
    let  kelvinUnit =  273.15
    let  fahrenheitUnit = 32.0
    
    
    @State private var tempUnit = "C"
    @State private var tempUnitTo = "K"
    @State private var tempUnitToIndex = "F"
    
    
    var tempInKelvin: Double = 0.00
    
    
    let temperatures = ["C", "K", "F"]
    var convertedTo = ["C", "K", "F"]
    
     var temp: Double {
         switch (tempUnit, tempUnitTo) {
         case ("C", "K"):
             return celciusUnit + kelvinUnit
        
         case ("K", "C"):
             return celciusUnit - kelvinUnit
             
         case ("C", "F"):
            return  (celciusUnit * 9/5) + fahrenheitUnit
             
         case ("F", "C") :
             return  (celciusUnit - fahrenheitUnit) * 5/9
             
         case ("F", "K") :
             return  (celciusUnit  - fahrenheitUnit) * 5/9 + kelvinUnit
             
         case ("K", "F") :
             return  (celciusUnit - kelvinUnit) * 9/5 + fahrenheitUnit
             
         default:
            return  celciusUnit
         }
         
    }
    
    var unit: String {
        switch (tempUnitTo) {
        case ("C"):
            return "Celsius"
            
        case ("K"):
            return "Kelvin"
            
        case ("F"):
            return "Fahrenhiet"
            
        default:
            return "unknown"
        }
    }
    
    var unitFrom: String {
        switch (tempUnit) {
        case ("C"):
            return "Celsius"
            
        case ("K"):
            return "Kelvin"
            
        case ("F"):
            return "Fahrenhiet"
            
        default:
            return "unknown"
        }
    }
    
    
    
    var body: some View {
        NavigationStack{
            Form{
                Section("Temperature in \(unitFrom)"){
                    HStack{
                        TextField("Enter value in \(unitFrom)", value: $celciusUnit, format: .number )
                            .keyboardType(.decimalPad)
                        
                        Picker("", selection: $tempUnit){
                            ForEach(temperatures, id: \.self){
                                Text($0)
                            }
                        }
                    }
                }
                
                Section("Temperature in \(unit)"){
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
