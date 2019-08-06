//
//  ViewController.swift
//  AwesomeSwift
//
//  Created by masato on 2019/08/01.
//  Copyright © 2019年 FreeNerdLaughed. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var attributeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // ラベルのテキスト設定
        label.text = "changed text"
        // ラベルの背景色設定
        label.backgroundColor = UIColor.red
        // ラベルのテキスト色
        label.textColor = UIColor.white
        // ラベルのサイズを自動調節
        // MEMO: auto layoutを設定すると必要ない
        //label.sizeToFit()
        // フォントサイズを可変にする
        label.adjustsFontSizeToFitWidth = true
        // フォントの最小値を設定
        label.minimumScaleFactor = 0.5;
        // フォントを設定
        label.font = UIFont(name: "Chalkduster", size: 22)
        // 座標設定
        // MEMO: ここで設定しても効果がない
        //label.frame = CGRect(x: 0, y: 0, width: 10, height: 10)
        // 文字装飾
        attributeLabel.attributedText = setAttributeText()
    }
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        // 座標設定
        // MEMO: ここでは効果がない。つまりviewWillLayoutSubviewsとviewDidLayoutSubviewsの間でauto layoutが実行される
        //label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        // 座標設定
        // MEMO: ここでは効果がある
        //label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 座標設定
        // MEMO: ここでは効果がある
        //label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    }
    
    /// ラベルの装飾文字を返します
    ///
    /// - Returns: 装飾後のテキスト
    func setAttributeText() -> NSAttributedString{
        let str = NSAttributedString(string: "0123456789")
        return str;
    }


}

