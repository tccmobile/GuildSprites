//
//  ContentView.swift
//  Sprites
//
//  Created by William Smith on 7/19/22.
//

import SwiftUI
import SpriteKit

class BoxScene: SKScene{
    override func didMove(to view: SKView) {
        physicsBody = SKPhysicsBody(edgeLoopFrom: frame)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        //All code will be typed below this line
        
    }
}

struct ContentView: View {
    var scene: SKScene {
        let scene = BoxScene()
        scene.size = CGSize(width: 300, height: 400)
        scene.scaleMode = .aspectFill
        return scene
        
    }
    var body: some View {
        SpriteView(scene: scene)
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity)
            .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
