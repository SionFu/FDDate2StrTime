# FDDate2StrTime
=========
Easy to get timeStr With one Line code

like:
```
NSString *str = [NSDate getStrNumberOfTimeWithDate:date];
NSString *str = [NSDate getStrNumberOfTimeWithTimestamp:@"693113225"];

```




<p align="center">
<img src="https://raw.githubusercontent.com/SionFu/FDDate2StrTime/master/Simulator%20Screen%20Shot%20Oct%2028%2C%202016%2C%201.28.05%20PM.png" alt="Downloads"/>
</p>
Version 1.0

Who Uses It
----------
Myself  `^_^`


How To Use
----------
just import

`#import "NSDate+FDDate2StrTime.h""`


### Using  "NSDate+FDDate2StrTime.h" category 

Just #import the "NSDate+FDDate2StrTime.h" header

```objective-c
#import "NSDate+FDDate2StrTime.h"

...
NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"YYYY年M月dd日HH时"];
    NSDate *date = [formatter dateFromString:@"2013年9月7日10时"];
NSString *str = [NSDate getStrNumberOfTimeWithDate:date];
NSString *str1 = [NSDate getStrNumberOfTimeWithTimestamp:@"693113225"];
 NSLog(@"%@\n%@",str,str1);
 //3年前
 //24年前
```


### Build Project

At this point your workspace should build without error. If you are having problem, post to the Issue and the
community can help you solve it.

Future Enhancements
-------------------

- LRU memory cache cleanup instead of reset on memory warning

## Licenses

All source code is licensed under the [MIT License]


