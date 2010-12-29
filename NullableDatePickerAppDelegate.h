//
//  NullableDatePickerAppDelegate.h
//  NullableDatePicker
//
//  Created by Tom Ryan on 29/12/10.
//  email: tryan@gardano.com
//	blog: http://blog.mvsicha.com
//  Copyright 2010 M V S I C H A. All rights reserved.
//

#import <Cocoa/Cocoa.h>
@class ViewController;

@interface NullableDatePickerAppDelegate : NSObject <NSApplicationDelegate> {
    NSWindow *window;
	IBOutlet ViewController *viewController;
}

@property (assign) IBOutlet NSWindow *window;

@end
