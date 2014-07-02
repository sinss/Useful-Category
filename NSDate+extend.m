 //
//  NSDate+extend.m
//  InsurancePig
//
//  Created by Leo Chang on 6/20/14.
//  Copyright (c) 2014 Good-idea Consunting Inc. All rights reserved.
//

#import "NSDate+extend.h"

const NSInteger dayUnit = 60 * 60 * 24;
const NSInteger hourUnit = 60 * 60;
const NSInteger minUnit = 60;
const NSInteger secondUnit = 1;

@implementation NSDate (extend)

- (NSDate*)addDays:(NSInteger)days
{
    return [self dateByAddingTimeInterval:days * dayUnit];
}

- (NSDate*)addHouse:(NSInteger)hours
{
    return [self dateByAddingTimeInterval:hours * hourUnit];
}

- (NSDate*)addMinutes:(NSInteger)mins
{
    return [self dateByAddingTimeInterval:mins * minUnit];
}
- (NSDate*)addSeconds:(NSInteger)seconds
{
    return [self dateByAddingTimeInterval:seconds * secondUnit];
}

- (NSDate*)addByDate:(NSDate*)date
{
    NSInteger interval = [self timeIntervalSinceDate:date];
    return [self dateByAddingTimeInterval:interval];
}

- (BOOL)hasPastSinceToday
{
    NSInteger interval = [self timeIntervalSinceDate:[NSDate date]];
    if (interval < 0)
    {
        return YES;
    }
    return NO;
}

- (NSString*)toString
{
    if (self == nil)
        return @"";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM/dd"];
    NSString *strDate = [dateFormatter stringFromDate:self];
    return strDate;
}

- (NSString*)toFullString
{
    if (self == nil)
        return @"";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm:ss"];
    NSString *strDate = [dateFormatter stringFromDate:self];
    return strDate;
}

- (NSString*)toFullStringWithoutSeconds
{
    if (self == nil)
        return @"";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy/MM/dd HH:mm"];
    NSString *strDate = [dateFormatter stringFromDate:self];
    return strDate;
}

- (NSString*)toFullStringFromNSDate
{
    if (self == nil)
        return @"";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    NSString *strDate = [dateFormatter stringFromDate:self];
    return strDate;
}

- (NSString*)toStringFromParse
{
    //2014-06-21 05:42:18 +0000
    if (self == nil)
        return @"";
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss +0800"];
    NSString *strDate = [dateFormatter stringFromDate:self];
    return [strDate stringByReplacingOccurrencesOfString:@"+0800" withString:@""];
}



@end
