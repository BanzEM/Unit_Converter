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
    
     var temp: Double {
         
         let tempInKelvin = celciusUnit + kelvinUnit
        
        return tempInKelvin
    }
    
    
    var body: some View {
        NavigationStack{
            Form{
                Section("Temperature in celcius"){
                    TextField("Enter value in Celcius", value: $celciusUnit, format: .number )
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
