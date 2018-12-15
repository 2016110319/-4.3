//
//  ViewController.swift
//  4.3
//
//  Created by student on 2018/12/12.
//  Copyright © 2018年 2016110319. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //声明UILabel对象
    var label: UILabel!
    var button: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
      
        //创建UILabel对象
        label = UILabel(frame: CGRect(x: 50, y: 200, width: 300, height: 40))
        //设置label显示文字
        label.text = "hello world"
        label.font = UIFont.systemFont(ofSize: 22)
        label.textColor = UIColor.black
        //将label加入视图控制器
        self.view.addSubview(label)
        
        //创建UIButton对象
        let button = UIButton(frame: CGRect(x: 50, y: 50, width: 100, height: 50))
        //设置正常状态下按钮的标题
        button.setTitle("click me", for: .normal)
        //设置按钮边框宽度
        button.layer.borderWidth = 1
        //设置正常状态下标题的颜色
        button.setTitleColor(UIColor.black, for: .normal)
        //设置高亮状态下（被点击且未释放鼠标）标题的颜色
        button.setTitleColor(UIColor.brown, for: .highlighted)
        //给按钮添加target-action
        button.addTarget(self, action: #selector(clicked), for: .touchUpInside)
        
        //将button加入视图控制器
        self.view.addSubview(button)
    }
    // 按钮点击事件，改变label显示的文字
    @objc func clicked() {
        if label.text == "hello world" {
            label.text = "I'm clicked"
        } else {
            label.text = "hello world"
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

