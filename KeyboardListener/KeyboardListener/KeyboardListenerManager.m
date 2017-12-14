//
//  KeyboardListenerManager.m
//  KeyboardListener
//
//  Created by Val  Geyvandov on 12/12/17.
//  Copyright © 2017 Val  Geyvandov. All rights reserved.
//

#import "KeyboardListenerManager.h"

#import "KeyboardListener.h"
#import <React/RCTBridge.h>

@implementation KeyboardListenerManager

RCT_EXPORT_MODULE()

- (UIView *)view
{
    return [[KeyboardListener alloc] initWithEventDispatcher:self.bridge.eventDispatcher];
}

@end
