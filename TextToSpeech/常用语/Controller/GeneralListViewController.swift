//
//  GeneralListViewController.swift
//  TextToSpeech
//
//  Created by 邵勇 on 2018/2/6.
//  Copyright © 2018年 null. All rights reserved.
//

import UIKit

class GeneralListViewController: UIViewController, UITableViewDataSource,UITableViewDelegate {
    
    var tableView:UITableView!
    var dataArray:[[String]] = [NSArray]() as! [[String]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        
        let sectionArray0 = NSArray(array: ["12345","654321","127580"])

        self.dataArray = [sectionArray0 as! Array<String>,sectionArray0 as! Array<String>,sectionArray0 as! Array<String>]
        
        self.tableView = UITableView(frame: UIScreen.main.bounds, style: UITableViewStyle.grouped)
        self.tableView.rowHeight = 44
        self.tableView.dataSource = self
        self.tableView.delegate = self
        self.tableView.tableFooterView = UIView.init(frame: CGRect.init())
        self.view.addSubview(self.tableView)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return self.dataArray.count
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionArray:NSArray = self.dataArray[section] as NSArray
        return sectionArray.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell")
        if cell == nil {
            cell = UITableViewCell.init(style: UITableViewCellStyle.default, reuseIdentifier: "UITableViewCell")
        }
        let sectionArray:NSArray = self.dataArray[indexPath.section] as NSArray

        cell?.textLabel?.text = sectionArray[indexPath.row] as! String
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "生活"
    }
    
    
    


}
