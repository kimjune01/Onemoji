//
//  OnemojiVC.swift
//  Onemoji
//
//  Created by June Kim on 2017-03-13.
//  Copyright © 2017 Soulcast. All rights reserved.
//

import Foundation
import SwiftyCam

class OnemojiVC: UIViewController, SwiftyCamButtonDelegate, SwiftyCamViewControllerDelegate {
  
  var cameraVC: SwiftyCamViewController!
  var captureButton: SwiftyCamButton!
  let emojiView = UILabel(frame: CGRect(x: 10, y: 10, width: 70, height: 70))
  
  
  override func viewDidLoad() {
    super.viewDidLoad()
    addCameraVC()
    addEmojiView()
  }
  
  func addCameraVC() {
    cameraVC = SwiftyCamViewController()
    cameraVC.cameraDelegate = self
    cameraVC.videoQuality = .resolution640x480
    cameraVC.defaultCamera = .front
    cameraVC.willMove(toParentViewController: self)
    cameraVC.view.frame = CGRect(
      x: 10, y: 10,
      width: view.frame.width - 20,
      height: view.frame.width - 20)
    view.addSubview(cameraVC.view)
    addChildViewController(cameraVC)
    //
    let buttonSize:CGFloat = 50
    let captureButton = SwiftyCamButton(frame: CGRect(
      x: (view.frame.width - buttonSize)/2,
      y: (view.frame.height - buttonSize * 2),
      width: 50,
      height: 50))
    captureButton.backgroundColor = .blue
    captureButton.delegate = self
    view.addSubview(captureButton)
  }

  func addEmojiView() {
    emojiView.textAlignment = .center
    emojiView.text = "😍"
    emojiView.font = UIFont.systemFont(ofSize: 50)
    view.addSubview(emojiView)
    
  }
  ///////////////////////////////
  
  func buttonWasTapped() {
    print(#function)
    cameraVC.takePhoto()
  }
  func buttonDidBeginLongPress() {
    print(#function)
    //TODO: send a series of screenshots to OpenCV
  }
  func buttonDidEndLongPress() {
    print(#function)
    //do nothing
  }
  func longPressDidReachMaximumDuration() {
    print(#function)
    //do nothing
  }
  func setMaxiumVideoDuration() -> Double {
    print(#function)
    return 555.0
  }
  
  ///////////////////////////////

  func swiftyCam(_ swiftyCam: SwiftyCamViewController, didTake photo: UIImage) {
    print(#function)
    //TODO: send to OpenCV
  }
  
  ///////////////////////////////
  
  
}
