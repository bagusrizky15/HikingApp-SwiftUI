//
//  CardView.swift
//  HikingApp
//
//  Created by BBPDEV on 07/09/23.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    
    func randomImage(){
        repeat{
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                
                VStack(alignment: .leading) {
                    HStack(spacing: 10) {
                        Text("Hiking")
                            .fontWeight(.black)
                            .font(.system(size: 52))
                            .foregroundStyle(
                            LinearGradient(colors: [
                                .customGrayLight, .customGrayMedium
                            ],
                                           startPoint: .top, endPoint: .bottom
                                )
                        )
                        
                        Button{
                            // ACTION
                            print("the button was pressed")
                        } label: {
                            CustomButtonView()
                        }
                    }
                    
                    Text("Find and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                }
                
                ZStack {
                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                }
                
                Button{
                    // ACTION
                    randomImage()
                }label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                        LinearGradient(colors: [
                            .customGreenLight,
                            .customGreenMedium],
                                       startPoint: .top, endPoint: .bottom)
                        )
                        .shadow(radius: 0.25, x: 1, y: 2)
                }
                .buttonStyle(GradientButton())
            }
        }
        .frame(width: 320, height: 570)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
