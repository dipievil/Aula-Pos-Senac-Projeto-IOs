//
//  GameScene.swift
//  ShootShip
//
//  Created by IOS SENAC on 23/10/21.
//

import SpriteKit
import GameplayKit

struct ColliderType{
    
    static let Player: UInt32 = 1
}

class GameScene: SKScene, SKPhysicsContactDelegate {
    
    var player = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        
        self.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        self.physicsWorld.contactDelegate = self
        
        player = SKSpriteNode(imageNamed: "ship")
        player.name = "Jogador"
        player.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        player.size = CGSize(width: 90, height: 90)
        player.position = CGPoint(x: 0, y: -30)
        player.physicsBody?.isDynamic = false
        player.physicsBody?.categoryBitMask = ColliderType.Player
        
        self.addChild(player)
        

    }
        
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {

        if let location = touches.first?.location(in: self){
            print(player.position)
            print(location)
            shot(from: player.position, to: location)
            print("shoooot")
        }
    }
    
    override func update(_ currentTime: TimeInterval) {
        // Called before each frame is rendered
    }
    
    public func shot(from: CGPoint, to: CGPoint){
    
        let bulletNode = SKSpriteNode(color: .red, size: CGSize(width: 10, height: 10))
        
        let delta = CGVector(dx: to.x - from.x, dy: to.y - from.y)
        let direction = atan2(delta.dy, delta.dx)
        
        let bulletSpeed: CGFloat = 1000
        let bulletVellocity = CGVector(dx: bulletSpeed * cos(direction), dy: bulletSpeed * sin(direction))
        
        let body = SKPhysicsBody(rectangleOf: bulletNode.size)
        body.affectedByGravity = false
        body.velocity = bulletVellocity
        bulletNode.physicsBody = body
        addChild(bulletNode)
    }
    

}
