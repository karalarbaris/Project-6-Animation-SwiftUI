//
//  ContentView.swift
//  Project-6-Animation-SwiftUI
//
//  Created by Baris Karalar on 15.06.2021.
//

import SwiftUI

//Animating gestures

struct ContentView: View {

    @State private var dragAmount = CGSize.zero

    var body: some View {

        LinearGradient(gradient: Gradient(colors: [.yellow, .red]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .frame(width: 300, height: 200)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .offset(dragAmount)
            .gesture(
                DragGesture()
                    .onChanged {
                        self.dragAmount = $0.translation
                    }
                    .onEnded({ _ in
                        withAnimation(.spring()) {
                            self.dragAmount = .zero
                        }
                    })

            )
//            .animation(.spring())

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
