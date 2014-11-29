//
//  Logger.m
//
//  Copyright (c) 2014 pebble8888. All rights reserved.
//

#import "Logger.h"

void Logger(NSString* fmt, ...)
{
    va_list arglist;
    va_start(arglist, fmt);
    NSString* str = [[NSString alloc] initWithFormat:fmt arguments:arglist];
    va_end(arglist);
    
    static NSString* laststr = @"";
    static bool same = false;
    if( [str isEqualToString:laststr] ){
        if( !same ){
            NSLog( @"<<loop>>" );
        }
        same = true;
    } else {
        NSLog( @"%@", str );
        laststr = str;
        same = false;
    }
}

