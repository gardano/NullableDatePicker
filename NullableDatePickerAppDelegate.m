//
//  NullableDatePickerAppDelegate.m
//  NullableDatePicker
//
//  Created by Tom Ryan on 29/12/10.
//  email: tryan@gardano.com
//	blog: http://blog.mvsicha.com
//  Copyright 2010 M V S I C H A. All rights reserved.
//

#import "NullableDatePickerAppDelegate.h"

@implementation NullableDatePickerAppDelegate

@synthesize window;

- (void)awakeFromNib {
	[self.window.contentView addSubview:[viewController view]];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
	
}

@end
