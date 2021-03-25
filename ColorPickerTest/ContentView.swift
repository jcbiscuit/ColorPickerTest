//
//  ContentView.swift
//  ColorPickerTest
//
//  Created by Jody Clelland on 24/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var circleSelectedColor: Color = .red
    @State private var rectangelSelectedColor: Color = .red
    
    var body: some View {
        VStack{
            Circle()
                .foregroundColor(circleSelectedColor)
                .frame(width: 200, height: 200)
                .padding()
            
            Form {
                ColorPicker("Select a new color", selection: $circleSelectedColor)
        
            }
           
            Rectangle()
                .foregroundColor(rectangelSelectedColor)
                .frame(width: 250, height: 150)
                .padding()
            
            Form {
                ColorPicker("Change the rectangle color", selection: $rectangelSelectedColor)
            }
               
        }
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
