//
//  LightWalkthrough 1.swift
//  WaterApp
//
//  Created by Maxik on 10.12.2025.
//

import SwiftUI

struct LightWalkthrough1: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
                    Image("Iphone")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 50)
                    Image("Home")
                        .resizable()
                        .scaledToFit()
                        .padding(.top, 70)
                        
                
            
            
            
        }
    }
    
    
}

#Preview{
    LightWalkthrough1()
}
