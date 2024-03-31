//
//  ContentView.swift
//  HappyNewYear
//
//  Created by SERGEI OSKIN on 31.03.2024.
//

import SwiftUI
import SpriteKit

class SnowScene: SKScene {
    
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0.5, y: 1)
    }
}

struct ContentView: View {
    
    @State private var isSpinning = false
    @State private var starPulsating = false
    private let garlandColor = Color(#colorLiteral(red: 0.9372549057, green: 0.3490196168, blue: 0.1921568662, alpha: 1))
    
    var snowScene: SKScene {
        let scene = SnowScene()
        let particle = SKEmitterNode(fileNamed: "SnowParticle")!
        scene.addChild(particle)
        scene.scaleMode = .resizeFill
        scene.backgroundColor = .clear
        return scene
    }
    
    var body: some View {
        
        ZStack {
            
            
            Image("Night")
                .resizable()
                .ignoresSafeArea()
            
            SpriteView(scene: snowScene, options: [.allowsTransparency])
                .ignoresSafeArea()
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            
            
            
            
            VStack {
                
                Image("Star")
                    .resizable()
                    .scaleEffect(starPulsating ? 0.8 : 1.2, anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .frame(width: 80, height: 80)
                    .shadow(color: .red, radius: 10, x: 0, y:0)
                    .offset(y: 80)
                    .zIndex(2)
                    .animation(.easeInOut(duration: 1).repeatForever(autoreverses: true), value: starPulsating)
                    .onAppear() {
                        self.starPulsating.toggle()
                    }
                ZStack {
                    
                    Image("Tree")
                        .resizable()
                        .frame(width: 400, height: 600)
                    
                    VStack {
                        
                        ZStack {
                            
                            Circle()
                                .trim(from: 0, to: (1/CGFloat(2)))
                                .stroke(lineWidth: 4)
                                .frame(width: 80, height: 80)
                                .foregroundColor(garlandColor)
                                .shadow(color: .white, radius: 10, x: 0, y:0)
                                .hueRotation(.degrees(isSpinning ? 310 : 50))
                                .animation(.linear(duration: 1.5).repeatForever(autoreverses: false), value: isSpinning)
                            
                            ForEach(0 ..< 4) {
                                Circle()
                                    .foregroundColor(.red)
                                    .offset(y: 40)
                                    .rotationEffect(.degrees(Double($0) * 90))
                                    .rotationEffect(.degrees(isSpinning ? 0 : 180))
                                    .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                                    .frame(width: 6, height: 6 )
                                    .shadow(color: .white, radius: 10, x: 0, y:0)
                                    .animation(.linear(duration: 1.5).repeatForever(autoreverses: false), value: isSpinning)
                                
                            }
                        }.rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                            .offset(y: 130)
                        
                        ZStack {
                            Circle()
                                .trim(from: 0, to: (1/CGFloat(2)))
                                .stroke(lineWidth: 4)
                                .frame(width: 130, height: 130)
                                .foregroundColor(garlandColor)
                                .shadow(color: .white, radius: 10, x: 0, y:0)
                                .hueRotation(.degrees(isSpinning ? 310 : 50))
                                .animation(.linear(duration: 1.5).repeatForever(autoreverses: false), value: isSpinning)
                            
                            ForEach(0 ..< 4) {
                                Circle()
                                    .foregroundColor(.red)
                                    .offset(y: 65)
                                    .rotationEffect(.degrees(Double($0) * 90))
                                    .rotationEffect(.degrees(isSpinning ? 0 : 180))
                                    .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                                    .frame(width: 6, height: 6 )
                                    .shadow(color: .white, radius: 10, x: 0, y:0)
                                    .animation(.linear(duration: 1.5).repeatForever(autoreverses: false), value: isSpinning)
                                
                            }
                        } .rotation3DEffect(.degrees(60), axis: (x: 1, y: -0.5, z: 0))
                            .offset(x: -10, y: 110)
                        
                        ZStack {
                            Circle()
                                .trim(from: 0, to: (1/CGFloat(2)))
                                .stroke(lineWidth: 4)
                                .frame(width: 150, height: 150)
                                .foregroundColor(garlandColor)
                                .shadow(color: .white, radius: 10, x: 0, y:0)
                                .hueRotation(.degrees(isSpinning ? 310 : 50))
                                .animation(.linear(duration: 1.5).repeatForever(autoreverses: false), value: isSpinning)
                            
                            ForEach(0 ..< 4) {
                                Circle()
                                    .foregroundColor(.red)
                                    .offset(y: 75)
                                    .rotationEffect(.degrees(Double($0) * 90))
                                    .rotationEffect(.degrees(isSpinning ? 0 : 180))
                                    .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                                    .frame(width: 6, height: 6 )
                                    .shadow(color: .white, radius: 10, x: 0, y:0)
                                    .animation(.linear(duration: 1.5).repeatForever(autoreverses: false), value: isSpinning)
                                
                            }
                        } .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                            .offset(y: 80)
                        
                        ZStack {
                            Circle()
                                .trim(from: 0, to: (1/CGFloat(2)))
                                .stroke(lineWidth: 4)
                                .frame(width: 200, height: 200)
                                .foregroundColor(garlandColor)
                                .shadow(color: .white, radius: 10, x: 0, y:0)
                                .hueRotation(.degrees(isSpinning ? 310 : 50))
                                .animation(.linear(duration: 1.5).repeatForever(autoreverses: false), value: isSpinning)
                            
                            ForEach(0 ..< 4) {
                                Circle()
                                    .foregroundColor(.red)
                                    .offset(y: 100)
                                    .rotationEffect(.degrees(Double($0) * 90))
                                    .rotationEffect(.degrees(isSpinning ? 0 : 180))
                                    .hueRotation(.degrees(isSpinning ? Double($0) * 310 : Double($0) * 50))
                                    .frame(width: 6, height: 6 )
                                    .shadow(color: .white, radius: 10, x: 0, y:0)
                                    .animation(.linear(duration: 1.5).repeatForever(autoreverses: false), value: isSpinning)
                                
                            }
                        } .rotation3DEffect(.degrees(60), axis: (x: 1, y: 0, z: 0))
                            .offset(y: -20)
                    }
                    
                    .offset(y: -70)
                }
                
                
                
                .onAppear{
                    self.isSpinning.toggle()
                }
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
