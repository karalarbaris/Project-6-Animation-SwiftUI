//
//  ContentView.swift
//  Project-6-Animation-SwiftUI
//
//  Created by Baris Karalar on 15.06.2021.
//

import SwiftUI

//Controlling the animation stack

struct ContentView: View {
    
    @State private var enabled = false
    
    var body: some View {
        
        Button("Tap Me") {
            enabled.toggle()
        }
        .frame(width: 200, height: 200)
        .background(enabled ? Color.blue : Color.red)
        .animation(nil)
        .foregroundColor(.white)
        .clipShape(RoundedRectangle(cornerRadius: enabled ? 60 : 0))
        .animation(.interpolatingSpring(stiffness: 10, damping: 1))
        
    }
}

//struct ContentView: View {
//
//    @State private var animationAmount = 0.0
//
//    var body: some View {
//
//        Button("Tap Me") {
////            withAnimation {
////                animationAmount += 360
////            }
//            withAnimation(.interpolatingSpring(stiffness: 5, damping: 1)) {
//                animationAmount += 360
//            }
//        }
//        .padding(50)
//        .background(Color.red)
//        .foregroundColor(.white)
//        .clipShape(Circle())
//        .rotation3DEffect(
//            .degrees(animationAmount),
//            axis: (x: 0.0, y: 1.0, z: 0.0)
//        )
//
//
//    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
