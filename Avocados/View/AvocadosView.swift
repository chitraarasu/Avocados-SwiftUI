//
//  AvocadosView.swift
//  Avocados
//
//  Created by kirshi on 6/23/23.
//

import SwiftUI

struct AvocadosView: View {
    
    @State private var pulseAnimation: Bool = false
    
    var body: some View {
        ZStack {
            Image("background")
                .resizable()
                .edgesIgnoringSafeArea(.top)
            
            VStack {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 240)
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 12)
                    .scaleEffect(pulseAnimation ? 1 : 0.9)
                    .opacity(pulseAnimation ? 1 : 0.9)
                    .animation(.easeInOut(duration: 1.5).repeatForever(autoreverses: true))
                
                Text("Avocados")
                    .font(.system(size: 42, weight: .bold, design: .serif))
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .padding()
                    .shadow(color: Color("ColorBlackTransparentDark"), radius: 4)
                
                Text("""
Creamy, green, and full of nutrients! Avocado is a powerhouse ingredient at any meal. Enjoy these handpicked avocado recipes for breakfast, lunch, dinner & more!
""")
                .lineLimit(nil)
                .font(.system(.headline, design: .serif))
                .foregroundColor(Color("ColorGreenLight"))
                    .multilineTextAlignment(.center)
                    .lineSpacing(8)
                    .frame(maxWidth: 640, minHeight: 120)
                
            }
            .padding()
        }
        .onAppear {
            pulseAnimation.toggle()
        }
    }
}

struct AvocadosView_Previews: PreviewProvider {
    static var previews: some View {
        AvocadosView()
    }
}
