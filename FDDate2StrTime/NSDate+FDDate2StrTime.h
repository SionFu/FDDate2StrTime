//
//  NSDate+FDDate2StrTime.h
//  FDDate2StrTime
//
//  Created by Fu_sion on 10/28/16.
//  Copyright © 2016 Fu_sion. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (FDDate2StrTime)
/**
 *  传入日期返回 离当前时间的时间段
 *
 *  @param date 传入时间
 *
 *  @return 传出字符串 eg.1天前
 */
+ (NSString *)getStrNumberOfTimeWithDate:(NSDate *)date;
/**
 *  传入时间戳 返回离当前时间的时间段
 *
 *  @param timeStamp 秒的时间戳 eg.693113225
 *
 *  @return 传出字符串 eg.1天前
 */
+ (NSString *)getStrNumberOfTimeWithTimestamp:(int)timeStamp;

@end
