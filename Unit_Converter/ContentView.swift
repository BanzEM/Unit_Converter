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
    let  kelvinUnit =  273.15
    
    
    let temperatures = ["C", "K", "F"]
    
     var temp: Double {
         let tempInKelvin = celciusUnit + kelvinUnit
        
        return tempInKelvin
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
                    Text("\(temp, specifier: "%.2f")")
                }
                
            }.navigationTitle("Unit Converter")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
