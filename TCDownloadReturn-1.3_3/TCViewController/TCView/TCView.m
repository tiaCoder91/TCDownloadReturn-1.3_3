//
//  TCView.m
//  TCDownloadReturn-1.3_3
//
//  Created by Mattia Leggieri on 10/10/22.
//

#import "TCView.h"
#import <objc/runtime.h>

@implementation TCView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (instancetype)initWithFrame:(NSRect)frameRect {
    if (self = [super initWithFrame:frameRect]) {
        NSLog(@"Initializing class : <%@>", self.description);
        [self setWantsLayer: YES];
        //[self setNeedsDisplay: YES];
    }
    return self;
}

- (TCView *)setDefaultWithColor:(CGColorRef)backColor withBorderColor:(CGColorRef)borderColor {
    [self.layer setBackgroundColor: backColor];
    [self.layer setCornerRadius: 10.0];
    [self.layer setBorderWidth: 2.0];
    [self.layer setBorderColor: borderColor];
    return self;
}

@end
