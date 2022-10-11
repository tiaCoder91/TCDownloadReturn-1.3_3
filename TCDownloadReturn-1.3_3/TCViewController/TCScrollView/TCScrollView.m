//
//  TCScrollView.m
//  TCDownloadReturn-1.3_3
//
//  Created by Mattia Leggieri on 11/10/22.
//

#import "TCScrollView.h"

@implementation TCScrollView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (instancetype)initWithFrame:(NSRect)frameRect {
    if (self = [super initWithFrame:frameRect]) {
        self.translatesAutoresizingMaskIntoConstraints = true;
        self.hasVerticalScroller = true;
    }
    return self;
}

@end
