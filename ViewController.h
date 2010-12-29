//
//  ViewController.h
//  NullableDatePicker
//
//  Created by Tom Ryan on 29/12/10.
//  email: tryan@gardano.com
//	blog: http://blog.mvsicha.com
//  Copyright 2010 M V S I C H A. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "NullableDatePicker.h"

@interface ViewController : NSViewController <NullableDateDelegate> {
	NSDate *myDate;
	IBOutlet NullableDatePicker *datePicker;
}
@property (nonatomic, retain) NSDate *myDate;

@end
