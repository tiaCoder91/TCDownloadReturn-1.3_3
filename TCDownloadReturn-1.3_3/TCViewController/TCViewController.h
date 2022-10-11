//
//  TCViewController.h
//  TCDownloadReturn-1.3_3
//
//  Created by Mattia Leggieri on 10/10/22.
//

#import "TCWindow/TCWindow.h"
#import "TCView/TCView.h"
#import "TCButton/TCButton.h"
#import "TCTextView/TCTextView.h"
#import "TCScrollView/TCScrollView.h"

@interface TCViewController : NSObject <NSWindowDelegate, NSTextViewDelegate>
@property (nonatomic, strong) TCWindow *window;
@property (nonatomic, strong) TCView *mainView, *maskL, *maskR;
@property (nonatomic, strong) TCButton *ok, *cancel;
@property (nonatomic, strong) TCTextView *textViewL, *textViewR, *headL;
@property (nonatomic, strong) TCScrollView *scrollTextL, *scrollTextR;

- (NSSize)displaySize;
@end

