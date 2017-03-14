//
//  ObjcBridge.m
//  Onemoji
//
//  Created by June Kim on 2017-03-13.
//  Copyright © 2017 Soulcast. All rights reserved.
//

#import "ObjcBridge.h"
#import "VersionPrinter.hpp"
#import "UIImage+OpenCV.h"

@class ObjcBridge;
class VersionPrinter;

@implementation ObjcBridge



+ (UIImage*) blackImage {
  printVersion();
  std::shared_ptr<VersionPrinter> printer;
  cv::Mat blackMat = printer->blankImage();
  UIImage* blackImage = [UIImage imageWithCVMat:blackMat];;
  return blackImage;
}


@end
