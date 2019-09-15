//
//  HomeScene.swift
//  Mo
//
//  Created by Alexander Yu on 2019/9/7.
//  Copyright © 2019 Alexander Yu. All rights reserved.
//

import SpriteKit
import GameplayKit

class HomeScene: SKScene {
    
    var leftButton: SKNode? {
        return childNode(withName: "LeftButton")
    }
    var rightButton: SKNode? {
        return childNode(withName: "RightButton")
    }
    
    override func sceneDidLoad() {
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if camera != nil {
                move(touchNode: touchedNode)
                resetHUD()
                print(leftButton!.position)
                print(rightButton!.position)
            }
        }
    }
    
    func move(touchNode:SKNode) {
        if touchNode.name == "RightButton" {
            print(1)
            camera!.position.x += CGFloat(1500)
            print(camera!.position)
        }
        if touchNode.name == "LeftButton" {
            print(2)
            camera!.position.x -= CGFloat(1500)
        }
    }
    
    func resetHUD() {
        leftButton?.position = CGPoint(x: camera!.position.x - 600, y: camera!.position.y)
        rightButton?.position = CGPoint(x: camera!.position.x + 600, y: camera!.position.y)
    }
}
