//
//  GameScene.swift
//  senac-2-projeto
//
//  Created by IOS SENAC on 23/10/21.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var player = SKSpriteNode()
    var enemy = SKSpriteNode()
    
    override func didMove(to view: SKView) {
        super.didMove(to: view)
        
        player = SKSpriteNode(imageNamed: "image")
        player.name = "Player"
        player.anchorPoint = CGPoint(x: 0.5, y: 0.5)
        
        self.anchorPoint = .init(x: 0.5, y: 0.5)
        
        /*
        let node = SKSpriteNode(color: .blue, size: CGSize(width: 100, height: 100))
        
        let moveUp = SKAction.moveBy(x: 0, y: 300, duration: 1)
        let moveDown = SKAction.moveBy(x: 0, y: -300, duration: 1)
        let fadeOut = SKAction.fadeOut(withDuration: 1)
        let fadeIn = SKAction.fadeIn(withDuration: 1)
        
        let moveDownAndFadeOut = SKAction.group([moveDown, fadeOut])
        let moveUpAndFadeIn = SKAction.group([moveUp, fadeIn])
        
        let sequence = SKAction.sequence([
            moveUp,
            moveDownAndFadeOut,
            moveDown,
            moveUpAndFadeIn
        ])
        
        node.run(SKAction.repeatForever(sequence))
        
        let sprite = SKSpriteNode(imageNamed: "image")
        
        let action = SKAction.repeatForever(SKAction.move(by: CGVector(dx: 0, dy: 10), duration: 1))
        
        sprite.run(action)
        
        addChild(sprite)
        addChild(node)
        
        let physicsNode = SKSpriteNode(color: .red, size: CGSize(width: 100, height: 100))
        
        physicsNode.physicsBody = SKPhysicsBody(rectangleOf: physicsNode.size)
        
        physicsNode.physicsBody?.restitution = 0.9
        
        addChild(physicsNode)
        
        let floor = SKSpriteNode(color: .green, size: CGSize(width: 2000, height: 10))
        
        floor.physicsBody = SKPhysicsBody(rectangleOf: floor.size)
        floor.physicsBody?.isDynamic = false
        
        floor.position.y = -self.size.height/2.0 + 30
        
        addChild(floor)
        */
    }
    
    override func touchesBegan(touches: Self<UITouch>, withEvent event: UIEvent?){
        
    }
    
    override func update(currentTime: CFTimeInterval){
        
    }
    
}

