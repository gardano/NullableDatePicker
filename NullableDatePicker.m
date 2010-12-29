//
//  NullableDatePicker.m
//  NullableDatePicker
//
//  Created by Tom Ryan on 29/12/10.
//  email: tryan@gardano.com
//	blog: http://blog.mvsicha.com
//  Copyright 2010 M V S I C H A. All rights reserved.
//

#import "NullableDatePicker.h"
#import "NSDate+Nullable.h"

@implementation NullableDatePicker
@synthesize dateValue, delegate;

- (id)initWithFrame:(NSRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.dateValue = [NSDate nullDate];
		[NSBundle loadNibNamed:@"NullableDatePicker" owner:self];
    }
    return self;
}

- (void)awakeFromNib {
	[self addSubview:nullDateView];
	[self addSubview:dateView];
	[nullDateView setHidden:NO];
	[dateView setHidden:YES];
	[datePicker setTarget:self];
	[datePicker setAction:@selector(updateDateValue:)];
}

- (void)drawRect:(NSRect)dirtyRect {
    // Drawing code here.
}

- (IBAction)showChooseView:(id)sender {
	[self setDateValue:[NSDate nullDate]];
	[self setNeedsDisplay:YES];
}
- (IBAction)showClearView:(id)sender {
	[self setDateValue:[NSDate date]];
	[self setNeedsDisplay:YES];
}

- (IBAction)updateDateValue:(id)sender {
	NSDate *d = [sender dateValue];
	self.dateValue = d;
}

- (void)setDateValue:(NSDate *)aDateValue {
	if(![dateValue isEqual:aDateValue]) {
		[dateValue release];
		if(aDateValue == nil) {
			aDateValue = [NSDate nullDate];
		}
		dateValue = [aDateValue retain];
	}
	[datePicker setDateValue:dateValue];
	if([dateValue isEqual:[NSDate nullDate]] || dateView == nil) {
		[[nullDateView animator] setHidden:NO];
		[[dateView animator] setHidden:YES];
	} else {
		[[nullDateView animator] setHidden:YES];
		[[dateView animator] setHidden:NO];
	}
	[self.delegate nullableDatePicker:self didChangeDate:dateValue];
}

- (void)dealloc {
	
	[super dealloc];
}

@end
