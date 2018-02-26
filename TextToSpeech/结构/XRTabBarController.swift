//
//  XRTabBarController.swift
//  TextToSpeech
//
//  Created by 邵勇 on 2018/2/6.
//  Copyright © 2018年 null. All rights reserved.
//

import UIKit

class XRTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.tabBar.tintColor = UIColor.orange
        self.loadChildViewControllers()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func loadChildViewControllers() -> Void {
        self.addChildViewController(childVC: HomeViewController(), title: "首页", normalImageStr: "首页", selectedImageStr: "首页action")
        self.addChildViewController(childVC: GeneralListViewController(), title: "常用", normalImageStr: "理财", selectedImageStr: "理财action")
        self.addChildViewController(childVC: MyCenterViewController(), title: "我的", normalImageStr: "生活", selectedImageStr: "生活action")

    }
    
    func addChildViewController(childVC:UIViewController,title:String,normalImageStr:String,selectedImageStr:String) -> Void {
        
        childVC.title = title
        
        var normalImage = UIImage(named: normalImageStr)
        normalImage = normalImage?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        var selectedImage = UIImage(named: selectedImageStr)
        selectedImage = selectedImage?.withRenderingMode(UIImageRenderingMode.alwaysOriginal)
        
        childVC.tabBarItem = UITabBarItem(title: title, image: normalImage, selectedImage: selectedImage)
        let navigationController = UINavigationController(rootViewController: childVC)
        self.addChildViewController(navigationController)
        
    }
    

}
