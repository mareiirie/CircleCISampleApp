//
//  ViewController.swift
//  CircleCITest
//
//  Created by 入江真礼 on 2020/04/17.
//  Copyright © 2020 入江真礼. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var changeColorButton: UIButton!
    private var didTapped = false

    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
    }

    private func setUp(){
        changeColorButton.setTitle("タップして", for: .normal)
        changeColorButton.setTitleColor(UIColor.black, for: .normal)
    }

    @IBAction func didTapChangeColorButton(_ sender: Any) {
        if didTapped {
            changeColorButton.setTitleColor(UIColor.black, for: .normal)
            didTapped = false
        } else {
            changeColorButton.setTitleColor(UIColor.red, for: .normal)
            didTapped = true
        }
    }

}

