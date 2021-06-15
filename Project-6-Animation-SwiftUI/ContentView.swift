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
        print(animationAmount)
        return NavigationView {
            VStack {
//                Stepper("Scale amount", value: $animationAmount.animation(), in: 1...10)
                Stepper("Scale amount", value: $animationAmount.animation(
                    Animation.easeOut(duration: 1)
                        .repeatCount(3, autoreverses: true)
                ), in: 1...10)
                
                Spacer()
                
                Button("Tap Me") {
                    self.animationAmount += 1
                }
                .padding(40)
                .background(Color.red)
                .foregroundColor(.white)
                .clipShape(Circle())
                .scaleEffect(animationAmount)
                
                
            }
            
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
