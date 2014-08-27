//
//  ViewController.swift
//  Three_Vs_Three
//
//  Created by lucus on 14-8-28.
//  Copyright (c) 2014年 lucus. All rights reserved.
//

import UIKit
import SpriteKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        if let scene = ThreeGameScene.sceneWithSize(self.view.bounds.size){
            // Configure the view.
            
            var sView : SKView = SKView()
            self.view = sView;
            
            let skView = sView; //view as SKView
            skView.showsFPS = true
            skView.showsNodeCount = true
            
            /* Sprite Kit applies additional optimizations to improve rendering performance */
            skView.ignoresSiblingOrder = true
            
            /* Set the scale mode to scale to fit the window */
            scene.scaleMode = .AspectFill
            
            skView.presentScene(scene)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

