//
//  TCWindow.m
//  TCDownloadReturn-1.3_3
//
//  Created by Mattia Leggieri on 10/10/22.
//

#import "TCWindow.h"

@implementation TCWindow

- (instancetype)initWithFrame:(NSRect)frame {
    if (self = [super init]) {
        self = [[TCWindow alloc]
                initWithContentRect:frame
                styleMask: NSWindowStyleMaskTitled | NSWindowStyleMaskMiniaturizable | NSWindowStyleMaskClosable | NSWindowStyleMaskResizable
                backing:NSBackingStoreBuffered
                defer:NO
        ];
        NSLog(@"Initializing class %@", [self class]);
    }
    return self;
}

@end
