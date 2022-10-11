#import "TCViewController/TCViewController.h"

int main(int argv, const char *argc[]) {
    @autoreleasepool {
        
        NSApplication *app = [NSApplication sharedApplication];
        
        TCViewController *controller = [[TCViewController alloc] init];
        
        NSSize winSize = NSMakeSize(700, 500);
        NSSize displaySize = [controller displaySize];
        NSRect winFrame = NSMakeRect(displaySize.width/2-winSize.width/2, displaySize.height/2-winSize.height/2, winSize.width, winSize.height);
        controller.window = [[TCWindow alloc] initWithFrame: winFrame];
        [controller.window setTitle:@"TCDownloadReturn-1.3_3"];
        [controller.window setMinSize:NSMakeSize(700, 530)];
        [controller.window setDelegate: controller];
        [controller.window makeKeyAndOrderFront:NSApp];
        [controller.window setBackgroundColor: [NSColor colorWithRed:0.0 green:0.269 blue:1.0 alpha:0.000]];
        
        
        NSRect viewFrame = NSMakeRect(0, 0, winSize.width, winSize.height+30);
        controller.mainView = [[TCView alloc] initWithFrame: viewFrame];
        [controller.mainView.layer setBackgroundColor: [[NSColor colorWithRed:0.0 green:0.269 blue:1.0 alpha:0.940] CGColor]];
        
        /*
        NSRect rectMaskL = NSMakeRect(10, controller.mainView.frame.size.height-controller.mainView.frame.size.height/100*35-30-10, controller.mainView.frame.size.width/100*50-20, controller.mainView.frame.size.height/100*35);
        controller.maskL = [[TCView alloc] initWithFrame: rectMaskL];
        [controller.maskL.layer setBackgroundColor: [[NSColor greenColor] CGColor]];
        [controller.maskL.layer setCornerRadius: 10.0];
        [controller.maskL.layer setBorderWidth: 2.0];
        [controller.maskL.layer setBorderColor: [[NSColor orangeColor] CGColor]];
        [controller.mainView addSubview: controller.maskL];
        */
        
        NSRect rectMaskL = NSMakeRect(10, controller.mainView.frame.size.height-controller.mainView.frame.size.height/100*35-30-10, controller.mainView.frame.size.width/100*50-20, controller.mainView.frame.size.height/100*35);
        controller.maskL = [[TCView alloc] initWithFrame: rectMaskL];
        [controller.maskL setDefaultWithColor:[[NSColor grayColor] CGColor] withBorderColor:[[NSColor redColor] CGColor]];
        [controller.mainView addSubview: controller.maskL];
        
        NSRect rectHeadL = NSMakeRect(0, controller.maskL.frame.size.height-controller.maskL.frame.size.height/100*20-2, controller.maskL.frame.size.width, controller.maskL.frame.size.height/100*20);
        controller.headL = [[TCTextView alloc] initWithFrame: rectHeadL];
        [controller.headL headView];
        [controller.maskL addSubview: controller.headL];
        
        controller.scrollTextL = [[TCScrollView alloc] initWithFrame: NSMakeRect(0, 0, rectMaskL.size.width, rectMaskL.size.height-controller.headL.frame.size.height)];
        [controller.maskL addSubview: controller.scrollTextL];
        
        controller.textViewL = [[TCTextView alloc] initWithFrame: NSMakeRect(0, 0, rectMaskL.size.width, rectMaskL.size.height)];
        [controller.textViewL defaultTextView];
        [controller.textViewL setDelegate: controller];
        
        controller.scrollTextL.documentView = controller.textViewL;
        [controller.mainView addSubview: controller.maskL];
        
#pragma mark - /////////////////////////////////////////////////////////////////////////////////////////
        
        controller.maskR = [[TCView alloc] initWithFrame: NSMakeRect(0, 0, 200, 200)];
        [controller.maskR.layer setBackgroundColor: [[NSColor grayColor] CGColor]];
        [controller.maskR setDefaultWithColor:[[NSColor grayColor] CGColor] withBorderColor:[[NSColor redColor] CGColor]];
        
        [controller.mainView addSubview: controller.maskR];
        /*
        NSRect rectHeadL = NSMakeRect(0, controller.maskL.frame.size.height-controller.maskL.frame.size.height/100*20-2, controller.maskL.frame.size.width, controller.maskL.frame.size.height/100*20);
        controller.headL = [[TCTextView alloc] initWithFrame: rectHeadL];
        [controller.headL setSelectable: NO];
        [controller.headL setEditable: NO];
        [controller.headL setBackgroundColor: [NSColor grayColor]];
        controller.headL.font = [NSFont fontWithName:@"Herculanum" size:12];
        [controller.headL setString: [NSString stringWithFormat:@"\nInserimento link:\n"]];
        [controller.headL setTextColor: [NSColor whiteColor]];
        [controller.maskL addSubview: controller.headL];
        */
        
        //[controller.maskL addSubview: controller.headL];
        
        /*
        controller.scrollTextL = [[TCScrollView alloc] initWithFrame: NSMakeRect(0, 0, rectMaskL.size.width, rectMaskL.size.height-controller.headL.frame.size.height)];
        controller.scrollTextL.translatesAutoresizingMaskIntoConstraints = true;
        controller.scrollTextL.hasVerticalScroller = true;
        */
        //[controller.maskL addSubview: controller.scrollTextL];
        /*
        controller.textViewL = [[TCTextView alloc] initWithFrame: NSMakeRect(0, 0, rectMaskL.size.width, rectMaskL.size.height)];
        //[controller.textViewR setMaxSize:NSMakeSize(displayPixelSize.width, 200)];
        [controller.textViewL setString:@"Hi Mattia!"];
        [controller.textViewL setMyId:1];
        controller.textViewL.font = [NSFont fontWithName:@"Helvetica neue" size:12];
        [controller.textViewL setTextColor: [NSColor blackColor]];
        [controller.textViewL setInsertionPointColor: [NSColor blackColor]];
        [controller.textViewL setBackgroundColor: [NSColor whiteColor]];
        [controller.textViewL setDelegate: controller];
        controller.scrollTextL.documentView = controller.textViewL;
        */
        //controller.scrollTextL.documentView = controller.textViewL;
        
        [controller.window.contentView addSubview: controller.mainView];
        
        [app run];
    }
    return 0;
}
