//
//  TCTextView.h
//  TCDownloadReturn-1.3_3
//
//  Created by Mattia Leggieri on 10/10/22.
//

#import <Cocoa/Cocoa.h>

@interface TCTextView : NSTextView
@property (nonatomic) int myId;
- (TCTextView *)headView;
- (TCTextView *)defaultTextView;
@end

