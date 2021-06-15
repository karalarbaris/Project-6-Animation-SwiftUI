//
//  ContentView.swift
//  Project-6-Animation-SwiftUI
//
//  Created by Baris Karalar on 15.06.2021.
//

import SwiftUI

struct ContentView: View {

    @State private var animationAmount: CGFloat = 1
    
    var body: some View {
        Button("sdgds sad") {
//            animationAmount += 0.3
        }
        .padding(50)
        .background(Color.red)
        .foregroundColor(.white)
        .clipShape(Circle())
//        .scaleEffect(animationAmount)
//        .animation(.default)
        
//        .blur(radius: (animationAmount-1) * 3)
        
//        .animation(.interpolatingSpring(stiffness: 50, damping: 1))
        
//        .animation(.easeInOut(duration: 2))
        
//        .animation(
//            Animation.easeInOut(duration: 2)
//                .delay(1)
//        )
        
//        .animation(
//            Animation.easeInOut(duration: 1)
//                .repeatCount(3, autoreverses: true)
//        )
        
//        .animation(
//            Animation.easeInOut(duration: 1)
//                .repeatForever()
//        )
        
        .overlay(
            Circle()
                .stroke(Color.red)
                .scaleEffect(animationAmount)
                .opacity(Double(2 - animationAmount))
                .animation(
                    Animation.easeOut(duration: 1)
                        .repeatForever(autoreverses: false)
                )
        )
        
        .onAppear {
            animationAmount = 2
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
