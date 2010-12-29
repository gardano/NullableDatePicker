//
//  NSDate+Extras.m
//  NullableDatePicker
//
//  Created by Tom Ryan on 29/12/10.
//  email: tryan@gardano.com
//	blog: http://blog.mvsicha.com
//  Copyright 2010 M V S I C H A. All rights reserved.
//

#import "NSDate+Nullable.h"


@implementation NSDate (Nullable)

+ (NSDate *)nullDate {
	return [NSDate distantFuture];
}
@end
