//
//  ViewController.m
//  NullableDatePicker
//
//  Created by Tom Ryan on 29/12/10.
//  email: tryan@gardano.com
//	blog: http://blog.mvsicha.com
//  Copyright 2010 M V S I C H A. All rights reserved.
//

#import "ViewController.h"
#import "NSDate+Nullable.h"
#import "NullableDatePicker.h"

@implementation ViewController
@synthesize myDate;

- (void)awakeFromNib {
	[self.view addSubview:datePicker];
	datePicker.delegate = self;
}

#pragma mark NullableDateDelegate
- (void)nullableDatePicker:(NullableDatePicker *)picker didChangeDate:(NSDate *)aDate {
	self.myDate = aDate;
}

- (void)dealloc {
	[myDate release];
	
	[super dealloc];
}

@end
