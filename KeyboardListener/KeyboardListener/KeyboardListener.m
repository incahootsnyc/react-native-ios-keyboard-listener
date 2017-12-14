//
//  KeyboardListener.m
//  KeyboardListener
//
//  Created by Val  Geyvandov on 12/12/17.
//  Copyright © 2017 Val  Geyvandov. All rights reserved.
//

#import "KeyboardListener.h"
#import <React/RCTEventDispatcher.h>
#import <React/UIView+React.h>

@implementation KeyboardListener
{
    RCTEventDispatcher *_eventDispatcher;
    NSInteger _nativeEventCount;
}

- (id)initWithEventDispatcher:(RCTEventDispatcher *)eventDispatcher
{
    if ((self = [super initWithFrame:CGRectZero])) {
        _eventDispatcher = eventDispatcher;
    }
    
    return self;
}

RCT_NOT_IMPLEMENTED(- (instancetype)initWithFrame:(CGRect)frame)
RCT_NOT_IMPLEMENTED(- (instancetype)initWithCoder:(NSCoder *)aDecoder)

- (BOOL) canBecomeFirstResponder
{
    return YES;
}

- (void) returnKeyPress {
    [_eventDispatcher sendAppEventWithName:@"keyEvent" body:@"enterPressed"];
}

- (NSArray *)keyCommands {
    return @[
             [UIKeyCommand keyCommandWithInput:@"\r" modifierFlags:0 action:@selector(returnKeyPress) discoverabilityTitle:@"Enter"]
             ];
}

@end
