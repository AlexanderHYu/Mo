//
//  GameScene.swift
//  Mo
//
//  Created by Alexander Yu on 2019/9/2.
//  Copyright © 2019 Alexander Yu. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var entities = [GKEntity]()
    var graphs = [String : GKGraph]()
    let transition: SKTransition = SKTransition.fade(withDuration: 0.5)
    let scene1 = SKScene(fileNamed: "HomeScene")
    override func sceneDidLoad() {
        
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if touchedNode.name == "Start Button" {
                self.view?.presentScene(scene1!, transition: transition)
            }
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
    }
}
