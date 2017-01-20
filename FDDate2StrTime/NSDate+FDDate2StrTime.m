//
//  NSDate+FDDate2StrTime.m
//  FDDate2StrTime
//
//  Created by Fu_sion on 10/28/16.
//  Copyright © 2016 Fu_sion. All rights reserved.
//

#import "NSDate+FDDate2StrTime.h"

@implementation NSDate (FDDate2StrTime)
+(NSString *)getStrNumberOfTimeWithTimestamp:(int)timeStamp {
    int nowInt = (int) (NSInteger)(NSTimeInterval)[[NSDate date] timeIntervalSince1970];
    NSString *strNumberTime;
    NSString *towOrBac;
    int timeSum;
    if (timeStamp < nowInt) {
         timeSum =  nowInt - timeStamp;
        towOrBac = @"前";
    }else if (timeStamp > nowInt) {
        timeSum =  timeStamp - nowInt;
        towOrBac = @"后";
    } else {
        strNumberTime = @"Right Now!";
    }
        if (timeSum <=  60) {
          strNumberTime = [NSString stringWithFormat:@"1分%@",towOrBac];
        }
        if (timeSum > 60) {
            strNumberTime = [NSString stringWithFormat:@"1时%@",towOrBac];
        }
        if (timeSum > 60 * 60 ) {
            strNumberTime = [NSString stringWithFormat:@"%d时%@",timeSum / (60 * 60),towOrBac];
        }
        if (timeSum > 60 * 60 * 24) {
            strNumberTime = [NSString stringWithFormat:@"%d天%@",timeSum / (60 * 60 * 24),towOrBac];
        }
        if (timeSum > 60 * 60 * 24 * 30) {
            strNumberTime = [NSString stringWithFormat:@"%d月%@",timeSum / (60 * 60 * 24 * 30),towOrBac];
        }
        if (timeSum > 60 * 60 * 24 * 365) {
            strNumberTime = [NSString stringWithFormat:@"%d年%@",timeSum / (60 * 60 * 24 * 365),towOrBac];
        }
    
    return strNumberTime;
}

//传入时间 返回 多少天之前 eg. 1天前
+ (NSString *)getStrNumberOfTimeWithDate:(NSDate *)date {
    NSDateFormatter *formatter = [NSDateFormatter new];
    NSDate *nowTime = [NSDate new];
    [formatter setDateFormat:@"HH"];
    [formatter stringFromDate:nowTime];
    [formatter stringFromDate:date];
    NSInteger now = [[formatter stringFromDate:nowTime] integerValue];
    NSInteger last = [[formatter stringFromDate:date] integerValue];
    NSString *strNumberTime;
    if (now > last) {
        strNumberTime =  [NSString stringWithFormat:@"%ld时前",now - last];
    }else if(now < last){
       strNumberTime =  [NSString stringWithFormat:@"%ld时后", last - now];
    }else {
       strNumberTime = @"1小时内";
    }
    [formatter setDateFormat:@"dd"];
    [formatter stringFromDate:nowTime];
    [formatter stringFromDate:date];
    now = [[formatter stringFromDate:nowTime] integerValue];
    last = [[formatter stringFromDate:date] integerValue];
    if (now > last) {
        strNumberTime =  [NSString stringWithFormat:@"%ld天前",now - last];
    }else if(now < last){
        strNumberTime =  [NSString stringWithFormat:@"%ld天后", last - now];
    }
    [formatter setDateFormat:@"MM"];
    [formatter stringFromDate:nowTime];
    [formatter stringFromDate:date];
    now = [[formatter stringFromDate:nowTime] integerValue];
    last = [[formatter stringFromDate:date] integerValue];
    if (now > last) {
        strNumberTime =  [NSString stringWithFormat:@"%ld月前",now - last];
    }else if(now < last){
        strNumberTime =  [NSString stringWithFormat:@"%ld月后", last - now];
    }
    [formatter setDateFormat:@"YYYY"];
    [formatter stringFromDate:nowTime];
    [formatter stringFromDate:date];
    now = [[formatter stringFromDate:nowTime] integerValue];
    last = [[formatter stringFromDate:date] integerValue];
    if (now > last) {
        NSInteger yearTime = now - last;
        switch (yearTime) {
            case 1:{
                 strNumberTime =  [NSString stringWithFormat:@"来自去年"];
            }
                break;
            case 2:{
                 strNumberTime =  [NSString stringWithFormat:@"来自前年"];
            }
                break;
            case 3:{
                 strNumberTime =  [NSString stringWithFormat:@"来自大前年"];
            }
                break;
            default: {
                strNumberTime =  [NSString stringWithFormat:@"%ld年前",yearTime];
            }
                break;
        }
    }else if(now < last){
        strNumberTime =  [NSString stringWithFormat:@"%ld年后", last - now];
    }
    return strNumberTime;
}

@end
