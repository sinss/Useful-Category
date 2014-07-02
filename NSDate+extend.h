//
//  NSDate+extend.h
//  InsurancePig
//
//  Created by Leo Chang on 6/20/14.
//  Copyright (c) 2014 Good-idea Consunting Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (extend)

- (NSDate*)addDays:(NSInteger)days;
- (NSDate*)addHouse:(NSInteger)hours;
- (NSDate*)addMinutes:(NSInteger)mins;
- (NSDate*)addSeconds:(NSInteger)seconds;
- (NSDate*)addByDate:(NSDate*)date;
- (BOOL)hasPastSinceToday;
- (NSString*)toString;
- (NSString*)toFullString;
- (NSString*)toFullStringWithoutSeconds;
- (NSString*)toFullStringFromNSDate;
- (NSString*)toStringFromParse;


@end
