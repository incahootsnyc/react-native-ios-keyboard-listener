//
//  KeyboardListener.h
//  KeyboardListener
//
//  Created by Val  Geyvandov on 12/12/17.
//  Copyright © 2017 Val  Geyvandov. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <React/RCTView.h>

@class RCTEventDispatcher;

@interface KeyboardListener : RCTView

- (instancetype)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher NS_DESIGNATED_INITIALIZER;

@end
