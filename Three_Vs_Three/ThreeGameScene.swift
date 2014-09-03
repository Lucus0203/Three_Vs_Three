//
//  ThreeGameScene.swift
//  Three_Vs_Three
//
//  Created by lucus on 14-8-28.
//  Copyright (c) 2014年 lucus. All rights reserved.
//

import SpriteKit
import Foundation
import Swift

class ThreeGameScene: SKScene {
    var adjustmentBg:CGFloat = 568
    //游戏宽高
    let gameWidth = UIScreen.mainScreen().bounds.size.width
    let gameHeight = UIScreen.mainScreen().bounds.size.height
    //棋谱大小
    let manualSize = UIScreen.mainScreen().bounds.size.width * 0.78
    //棋子大小
    let chessSize = UIScreen.mainScreen().bounds.size.width * 0.125
    //棋谱上9个点
    let point1:CGPoint = CGPoint(x:0.0,y:0.0)
    let point2:CGPoint = CGPoint(x:0.0,y:0.0)
    let point3:CGPoint = CGPoint(x:0.0,y:0.0)
    let point4:CGPoint = CGPoint(x:0.0,y:0.0)
    let point5:CGPoint = CGPoint(x:0.0,y:0.0)
    let point6:CGPoint = CGPoint(x:0.0,y:0.0)
    let point7:CGPoint = CGPoint(x:0.0,y:0.0)
    let point8:CGPoint = CGPoint(x:0.0,y:0.0)
    let point9:CGPoint = CGPoint(x:0.0,y:0.0)
    //背景
    var bjSprite = SKSpriteNode ()
    //棋谱
    var miSprite = SKSpriteNode()
    //六个棋子
    var chess1 = SKSpriteNode ()
    var chess2 = SKSpriteNode ()
    var chess3 = SKSpriteNode ()
    var chess4 = SKSpriteNode ()
    var chess5 = SKSpriteNode ()
    var chess6 = SKSpriteNode ()

    
    override init(size: CGSize) {
        super.init(size: size)
        adjustmentBg = size.height
        println ("游戏尺寸 : \(size)")
        point1 = CGPoint(x: (gameWidth-manualSize)/2 - chessSize/2, y: (gameHeight-manualSize)/2+manualSize - chessSize/2)
        point2 = CGPoint(x: (gameWidth-manualSize)/2+manualSize/2 - chessSize/2, y: (gameHeight-manualSize)/2+manualSize - chessSize/2)
        point3 = CGPoint(x: (gameWidth-manualSize)/2+manualSize - chessSize/2, y: (gameHeight-manualSize)/2+manualSize - chessSize/2)
        point4 = CGPoint(x: (gameWidth-manualSize)/2 - chessSize/2, y: (gameHeight-manualSize)/2+manualSize/2 - chessSize/2)
        point5 = CGPoint(x: (gameWidth-manualSize)/2+manualSize/2 - chessSize/2, y: (gameHeight-manualSize)/2+manualSize/2 - chessSize/2)
        point6 = CGPoint(x: (gameWidth-manualSize)/2+manualSize - chessSize/2, y: (gameHeight-manualSize)/2+manualSize/2 - chessSize/2)
        point7 = CGPoint(x: (gameWidth-manualSize)/2 - chessSize/2, y: (gameHeight-manualSize)/2 - chessSize/2)
        point8 = CGPoint(x: (gameWidth-manualSize)/2+manualSize/2 - chessSize/2, y: (gameHeight-manualSize)/2 - chessSize/2)
        point9 = CGPoint(x: (gameWidth-manualSize)/2+manualSize - chessSize/2, y: (gameHeight-manualSize)/2 - chessSize/2)
        gameInitView()
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    //判断是否是IPhone 5 / 5s
    func isIphone5 () -> Bool {
        var viewHeight:CGFloat =  UIScreen.mainScreen().bounds.size.height
        if viewHeight > 480 {
            return true;
        }
        return false;
    }
    
    func gameInitView() {
        //创建背景
        var BJimgName : String = "mibg"
        var iphone5 : Bool = isIphone5()
        if iphone5 {
            BJimgName = "mibg_1136h"
        }
        bjSprite = SKSpriteNode(imageNamed: BJimgName)
        bjSprite.anchorPoint = CGPointMake (0,0)
        bjSprite.size = CGSizeMake (UIScreen.mainScreen().bounds.size.width,adjustmentBg)
        bjSprite.position = CGPointMake (0,0)
        addChild(bjSprite)
        
        //创建棋谱
        miSprite = SKSpriteNode(imageNamed:"manual")
        miSprite.anchorPoint = CGPointMake (0,0)
        miSprite.position = CGPointMake ((gameWidth-manualSize)/2,(gameHeight-manualSize)/2)
        miSprite.size=CGSizeMake(manualSize, manualSize)
        addChild(miSprite)
        
        chess1 = SKSpriteNode(imageNamed: "bai")
        chess1.anchorPoint = CGPointMake(0, 0)
        chess1.position = point1
        chess1.size = CGSizeMake(chessSize, chessSize)
        addChild(chess1)
        
        chess2 = SKSpriteNode(imageNamed: "bai")
        chess2.anchorPoint = CGPointMake(0, 0)
        chess2.position = point2
        chess2.size = CGSizeMake(chessSize, chessSize)
        addChild(chess2)
        
        chess3 = SKSpriteNode(imageNamed: "bai")
        chess3.anchorPoint = CGPointMake(0, 0)
        chess3.position = point3
        chess3.size = CGSizeMake(chessSize, chessSize)
        addChild(chess3)
        
        chess4 = SKSpriteNode(imageNamed: "hei")
        chess4.anchorPoint = CGPointMake(0, 0)
        chess4.position = point7
        chess4.size = CGSizeMake(chessSize, chessSize)
        addChild(chess4)
        
        chess5 = SKSpriteNode(imageNamed: "hei")
        chess5.anchorPoint = CGPointMake(0, 0)
        chess5.position = point8
        chess5.size = CGSizeMake(chessSize, chessSize)
        addChild(chess5)
        
        chess6 = SKSpriteNode(imageNamed: "hei")
        chess6.anchorPoint = CGPointMake(0, 0)
        chess6.position = point9
        chess6.size = CGSizeMake(chessSize, chessSize)
        addChild(chess6)
        
    }
    
}