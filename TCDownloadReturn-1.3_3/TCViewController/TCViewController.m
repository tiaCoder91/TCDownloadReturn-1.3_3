//
//  TCViewController.m
//  TCDownloadReturn-1.3_3
//
//  Created by Mattia Leggieri on 10/10/22.
//

#import "TCViewController.h"

@implementation TCViewController  {
    //NSRect rectMaskL;
    NSRect rectMaskR;
}

- (NSSize)displaySize {
    NSLog(@"Call to %s", sel_getName(_cmd));
    NSScreen *screen = [NSScreen mainScreen];
    NSDictionary *description = [screen deviceDescription];
    return [[description objectForKey:NSDeviceSize] sizeValue];
}
/*
- (TCView *)mainView {
    if (!_mainView) {
        NSRect viewFrame = NSMakeRect(0, 0, 700, 530);
        _mainView = [[TCView alloc] initWithFrame: viewFrame];
        [_mainView.layer setBackgroundColor: [[NSColor colorWithRed:0.0 green:0.269 blue:1.0 alpha:0.940] CGColor]];
    }
    return _mainView;
}

- (TCView *)maskL {
    if (!_maskL) {
        rectMaskL = NSMakeRect(10, _mainView.frame.size.height-_mainView.frame.size.height/100*35-30-10, _mainView.frame.size.width/100*50-20, _mainView.frame.size.height/100*35);
        _maskL = [[TCView alloc] initWithFrame: rectMaskL];
        [_maskL.layer setBackgroundColor: [[NSColor greenColor] CGColor]];
        [_maskL.layer setCornerRadius: 10.0];
        [_maskL.layer setBorderWidth: 2.0];
        [_maskL.layer setBorderColor: [[NSColor orangeColor] CGColor]];
        //[_mainView addSubview: _maskL];
    }
    return _maskL;
}

- (TCTextView *)headL {
    if (!_headL) {
        NSRect rectHeadL = NSMakeRect(0, _maskL.frame.size.height-_maskL.frame.size.height/100*20-2, _maskL.frame.size.width, _maskL.frame.size.height/100*20);
        _headL = [[TCTextView alloc] initWithFrame: rectHeadL];
        [_headL setSelectable: NO];
        [_headL setEditable: NO];
        [_headL setBackgroundColor: [NSColor grayColor]];
        _headL.font = [NSFont fontWithName:@"Herculanum" size:12];
        [_headL setString: [NSString stringWithFormat:@"\nInserimento link:\n"]];
        [_headL setTextColor: [NSColor whiteColor]];
        //[_maskL addSubview: _headL];
    }
    return _headL;
}

- (TCScrollView *)scrollTextL {
    if (!_scrollTextL) {
        _scrollTextL = [[TCScrollView alloc] initWithFrame: NSMakeRect(0, 0, rectMaskL.size.width, rectMaskL.size.height-_headL.frame.size.height)];
        _scrollTextL.translatesAutoresizingMaskIntoConstraints = true;
        _scrollTextL.hasVerticalScroller = true;
    }
    return _scrollTextL;
}


- (TCTextView *)textViewL {
    if (!_textViewL) {
        _textViewL = [[TCTextView alloc] initWithFrame: NSMakeRect(0, 0, rectMaskL.size.width, rectMaskL.size.height)];
        //[controller.textViewR setMaxSize:NSMakeSize(displayPixelSize.width, 200)];
        [_textViewL setString:@"Hi Mattia!"];
        [_textViewL setMyId:1];
        _textViewL.font = [NSFont fontWithName:@"Helvetica neue" size:12];
        [_textViewL setTextColor: [NSColor blackColor]];
        [_textViewL setInsertionPointColor: [NSColor blackColor]];
        [_textViewL setBackgroundColor: [NSColor whiteColor]];
        [_textViewL setDelegate: self];
        //_scrollTextL.documentView = _textViewL;
    }
    return _textViewL;
}
*/

#pragma mark - View Right

- (TCView *)maskR {
    if (!_maskR) {
        rectMaskR = NSMakeRect(
               _mainView.frame.size.width-_mainView.frame.size.width/100*50,
               _mainView.frame.size.height-_mainView.frame.size.height/100*25-10,
               _mainView.frame.size.width/100*50-10,
               _mainView.frame.size.height/100*25
        );
        
        _maskR = [[TCView alloc] initWithFrame: rectMaskR];
        [_maskR.layer setBackgroundColor: [[NSColor redColor] CGColor]];
        [_maskR.layer setCornerRadius: 10.0];
        [_maskR.layer setBorderWidth: 2.0];
        [_maskR.layer setBorderColor: [[NSColor blackColor] CGColor]];
    }
    return _maskR;
}

- (TCScrollView *)scrollTextR {
    if (!_scrollTextR) {
        _scrollTextR = [[TCScrollView alloc] initWithFrame: NSMakeRect(0, 0, rectMaskR.size.width, rectMaskR.size.height)];
        _scrollTextR.translatesAutoresizingMaskIntoConstraints = true;
        _scrollTextR.hasVerticalScroller = true;
    }
    return _scrollTextR;
}

- (TCTextView *)textViewR {
    if (!_textViewR) {
        _textViewR = [[TCTextView alloc] initWithFrame: NSMakeRect(0, 0, rectMaskR.size.width, rectMaskR.size.height)];
        
        //[controller.textViewR setMaxSize:NSMakeSize(displayPixelSize.width, 200)];
        [_textViewR setString: @"Questo per ora sarà il log."];
        [_textViewR setMyId: 2];
        [_textViewR setBackgroundColor: [NSColor whiteColor]];
        [_textViewR setDelegate: self];
    }
    return _textViewR;
}

#pragma mark - Metodi di NSWindowDelegate

- (void)windowDidResize:(NSNotification *)notification {
    
    [_mainView setFrameSize: NSMakeSize( _window.frame.size.width, _window.frame.size.height)];
    
    NSLog(@"_window width = %f", _window.frame.size.width);
    NSLog(@"_mainView width = %f", _mainView.frame.size.width);
    
    if (_maskL) {
        NSLog(@"_maskL = %@", _maskL);
        NSRect frameMaskL = NSMakeRect(10, _mainView.frame.size.height-_mainView.frame.size.height/100*35-30-10, _mainView.frame.size.width/100*50-20, _mainView.frame.size.height/100*35);
        [_maskL setFrame: frameMaskL];
        [_headL setFrame: NSMakeRect(0, frameMaskL.size.height-_headL.frame.size.height-2, frameMaskL.size.width, _headL.frame.size.height)];
        [_scrollTextL setFrame: NSMakeRect(0, frameMaskL.size.height/100-2, frameMaskL.size.width, frameMaskL.size.height-_headL.frame.size.height)];
    }
    
    if (_maskR) {
        NSLog(@"_maskR = %@", _maskR);
    }
    
}

- (void)windowWillClose:(NSNotification *)notification {
    NSLog(@"Application closed!");
    exit(0);
}

@end
