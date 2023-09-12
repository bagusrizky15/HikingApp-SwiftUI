//
//  MotionAnimationView.swift
//  HikingApp
//
//  Created by BBPDEV on 12/09/23.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle: Int = Int.random(in: 6...12)
    
    //MARK: FUNCTIONS
    
    // RANDOM COORDINATE
    // RANDOM SIZE
    // RANDOM SCALE
    // RANDOM SPEED
    // RANDOM DELAY
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id:\.self) { item in
                Circle()
                    .foregroundColor(.white)
            }
        } //ZSTACK
        .frame(width: 256, height: 256)
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.teal.ignoresSafeArea()
            MotionAnimationView()
        }
    }
}
