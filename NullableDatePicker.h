//
//  NullableDatePicker.h
//  NullableDatePicker
//
//  Created by Tom Ryan on 29/12/10.
//  email: tryan@gardano.com
//	blog: http://blog.mvsicha.com
//  Copyright 2010 M V S I C H A. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NullableDatePickerDelegate.h"

@class NullableDatePicker;

@interface NullableDatePicker : NSView {
	IBOutlet NSView *nullDateView;
	IBOutlet NSView *dateView;
	IBOutlet NSButton *chooseButton;
	IBOutlet NSButton *clearButton;
	IBOutlet NSDatePicker *datePicker;
	NSDate *dateValue;
	
	id<NullableDateDelegate>delegate;
}
@property (retain) NSDate *dateValue;
@property (assign) id<NullableDateDelegate>delegate;

- (IBAction)showChooseView:(id)sender;
- (IBAction)showClearView:(id)sender;
- (IBAction)updateDateValue:(id)sender;
@end
