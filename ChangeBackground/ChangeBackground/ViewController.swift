//
//  ViewController.swift
//  ChangeBackground
//
//  Created by 朱文杰 on 15/12/2.
//  Copyright © 2015年 朱文杰. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {

    @IBOutlet weak var button: UIButton!
    var disposeBag: DisposeBag = DisposeBag()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        /*button.rx_tap.subscribeNext { [weak self] in
            self?.view.backgroundColor = UIColor.blackColor()
        }.addDisposableTo(disposeBag)*/

        button.rx_tap.map {
            return UIColor.greenColor()
        }.subscribeNext { [weak self] color in
            self?.view.backgroundColor = color
        }.addDisposableTo(disposeBag)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

