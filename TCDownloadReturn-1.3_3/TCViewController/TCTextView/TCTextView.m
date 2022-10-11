//
//  TCTextView.m
//  TCDownloadReturn-1.3_3
//
//  Created by Mattia Leggieri on 10/10/22.
//

#import "TCTextView.h"

@implementation TCTextView

- (void)drawRect:(NSRect)dirtyRect {
    [super drawRect:dirtyRect];
    
    // Drawing code here.
}

- (instancetype)initWithFrame:(NSRect)frameRect {
    if (self = [super initWithFrame:frameRect]) {
        self.font = [NSFont systemFontOfSize:12.0];
    }
    return self;
}

- (TCTextView *)headView {
    [self setSelectable: NO];
    [self setEditable: NO];
    [self setBackgroundColor: [NSColor grayColor]];
    self.font = [NSFont fontWithName:@"Herculanum" size:12];
    [self setString: [NSString stringWithFormat:@"\nInserimento link:\n"]];
    [self setTextColor: [NSColor whiteColor]];
    return self;
}

- (TCTextView *)defaultTextView {
    [self setString:@"Hi Mattia!"];
    [self setMyId:1];
    self.font = [NSFont fontWithName:@"Helvetica neue" size:12];
    [self setTextColor: [NSColor blackColor]];
    [self setInsertionPointColor: [NSColor blackColor]];
    [self setBackgroundColor: [NSColor whiteColor]];
    return self;
}

@end
