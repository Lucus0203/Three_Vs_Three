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
    
    //背景
    var bjSprite = SKSpriteNode ()
    
    override init(size: CGSize) {
        super.init(size: size)
        adjustmentBg = size.height
        println ("游戏尺寸 : \(size)")
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
        bjSprite.size = CGSizeMake (320,adjustmentBg)
        bjSprite.position = CGPointMake (0,0)
        addChild(bjSprite)

        
    }
}