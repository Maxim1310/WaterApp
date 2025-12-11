//
//  ContentView.swift
//  WaterApp
//
//
//


import SwiftUI

struct LightSplashScreenView: View {
    @State private var isLoading = false
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack {
                Image(systemName: "drop")
                    .font(.system(size: 90))
                    .foregroundColor(.white)
                
                Text("Waterly")
                    .fontWeight(.black)
                    .font(.system(size: 40))
                    .foregroundColor(.white)
            }
            
            VStack{
                Spacer()
                Circle()
                
                    .trim(from: 0, to: 0.7)
                    .stroke(Color.white, lineWidth: 10)
                    .frame(width:70, height:70)
                    .rotationEffect(Angle(degrees: isLoading ? 360:0))
                    .animation(.linear(duration: 2).repeatForever(autoreverses: false), value: isLoading)
                
                    .onAppear(){
                        isLoading = true
                    }
            }
            .padding(.bottom, 60)
    
        }
        
    }
}

#Preview {
    LightSplashScreenView()
}
