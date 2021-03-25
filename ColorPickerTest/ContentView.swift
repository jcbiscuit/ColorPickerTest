//
//  ContentView.swift
//  ColorPickerTest
//
//  Created by Jody Clelland on 24/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedColor: Color = .red
    
    var body: some View {
        VStack{
            Circle()
                .foregroundColor(selectedColor)
                .frame(width: 200, height: 200)
                .padding()
            
            Form {
                ColorPicker("Select a new color", selection: $selectedColor)
        
            }
           
               
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
