//
//  ViewController.swift
//  Onemoji
//
//  Created by June Kim on 2017-03-13.
//  Copyright © 2017 Soulcast. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    let swiftImage = ObjcBridge.blackImage()
    let blackView = UIImageView(image: swiftImage)
    view.addSubview(blackView)
    blackView.center = view.center
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

