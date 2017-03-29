//
//  EmojiPickerVC.swift
//  Onemoji
//
//  Created by June Kim on 2017-03-29.
//  Copyright © 2017 Soulcast. All rights reserved.
//

import Foundation
import UIKit

class EmojiPickerVC: UIViewController {
  
  var emojiPicked:String!
  
  let options:[String] = ["😄", "😉", "😗", "😮", "☹️", "😛"]
  
  override func viewDidLoad() {
    super.viewDidLoad()
    //lay out emojis in a grid
    let centerX = view.center.x
    let centerY = view.center.y
    let eachWidth = (view.frame.width - 20)/3
    let eachHeight = eachWidth
    let halfWidth = eachWidth / 2
    
    let firstFrame = CGRect(
      x: centerX - eachWidth - halfWidth,
      y: centerY - eachHeight,
      width: eachWidth, height: eachHeight)
    
    let secondFrame = CGRect(
      x: centerX - halfWidth,
      y: centerY - eachHeight,
      width: eachWidth, height: eachHeight)
    
    let thirdFrame = CGRect(
      x: centerX + halfWidth,
      y: centerY - eachHeight,
      width: eachWidth, height: eachHeight)
    
    let fourthFrame = CGRect(
      x: centerX - eachWidth - halfWidth,
      y: centerY, width: eachWidth, height: eachHeight)
    
    let fifthFrame = CGRect(
      x: centerX - halfWidth,
      y: centerY, width: eachWidth, height: eachHeight)
    
    let sixthFrame = CGRect(
      x: centerX + halfWidth,
      y: centerY, width: eachWidth, height: eachHeight)
    
    let firstView = UILabel(frame: firstFrame)
    firstView.backgroundColor = .red
    let secondView = UILabel(frame: secondFrame)
    secondView.backgroundColor = .blue
    let thirdView = UILabel(frame: thirdFrame)
    thirdView.backgroundColor = .green
    let fourthView = UILabel(frame: fourthFrame)
    fourthView.backgroundColor = .orange
    let fifthView = UILabel(frame: fifthFrame)
    fifthView.backgroundColor = .yellow
    let sixthView = UILabel(frame: sixthFrame)
    sixthView.backgroundColor = .cyan
    
    let allViews = [firstView, secondView, thirdView, fourthView, fifthView, sixthView]
    
    for eachView in allViews {
      view.addSubview(eachView)
    }
    
  }
}
