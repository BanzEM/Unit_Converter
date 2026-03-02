//
//  ContentView.swift
//  Unit_Converter
//
//  Created by Bandisile Mazomba on 2026/03/02.
//

import SwiftUI

struct ContentView: View {
    
    @State private var unit: Double = 0.0
    @State private var convertedUnit: Double = 273.15
    
    var body: some View {
        NavigationStack{
            Form{
                
                
                
            }.navigationTitle("Unit Converter")
                .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
