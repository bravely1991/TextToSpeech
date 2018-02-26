//
//  HomeViewController.swift
//  TextToSpeech
//
//  Created by 邵勇 on 2018/2/6.
//  Copyright © 2018年 null. All rights reserved.
//

import UIKit

class HomeViewController:  UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.green
        self.loadSubViews()
    
    }
    
    func loadSubViews() {
        let playBtn = UIButton.init(frame: CGRect.init(x: 0, y: 0, width: 100, height: 40))
        playBtn.center = self.view.center;
        playBtn.setTitle("play", for: UIControlState.normal)
        self.view.addSubview(playBtn)
        
        playBtn.addTarget(self, action: #selector(playBtnEvent), for: UIControlEvents.touchUpInside)
        
    }
    
    @objc func playBtnEvent() {
        print("playBtnEvent")
    }
    
    
}
