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
        resetHUD()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches {
            let location = touch.location(in: self)
            let touchedNode = atPoint(location)
            if camera != nil {
                move(touchNode: touchedNode)
                resetHUD()
            }
        }
    }
    
    func move(touchNode:SKNode) {
        let camPosition = camera!.position
        var nextCamPosition = CGFloat(1500)
        if touchNode.name == "RightButton" {
            if camPosition.x >= CGFloat(4500) {
                nextCamPosition = CGFloat(-4500)
            }
            camera!.position.x += nextCamPosition
        }
        if touchNode.name == "LeftButton" {
            if camPosition.x <= CGFloat(0) {
                nextCamPosition = CGFloat(-4500)
            }
            camera!.position.x -= nextCamPosition
        }
    }
    
    func resetHUD() {
        leftButton?.position = CGPoint(x: camera!.position.x - 600, y: camera!.position.y)
        rightButton?.position = CGPoint(x: camera!.position.x + 600, y: camera!.position.y)
    }
}
