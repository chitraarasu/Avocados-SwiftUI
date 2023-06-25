//
//  Splash.swift
//  Avocados
//
//  Created by kirshi on 6/23/23.
//

import SwiftUI

struct Splash: View {
    
    @State private var isActive: Bool = false
    
    var body: some View {
        ZStack {
            if self.isActive {
                ContentView()
            } else {
                Image("background")
                    .resizable()
                    .scaledToFill()
                    .edgesIgnoringSafeArea(.all)
            
                VStack {
                    Image("avocado")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 240)
                        .shadow(color: Color("ColorBlackTransparentDark"), radius: 12)
                    
                    Text("Avocados".uppercased())
                        .font(.system(size: 42, weight: .bold, design: .serif))
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding()
                        .shadow(color: Color("ColorBlackTransparentDark"), radius: 4)
                        
                }
            }
        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2, execute: {
                withAnimation {
                    self.isActive = true
                }
            })
        }
    }
}

struct Splash_Previews: PreviewProvider {
    static var previews: some View {
        Splash()
    }
}
