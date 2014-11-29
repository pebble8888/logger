//
//  Logger.h
//
//  Copyright (c) 2014 pebble8888. All rights reserved.
//

#import <Foundation/Foundation.h>

//#define USE_ONLYHEADER

#if defined(DEBUG)
  #if defined(USE_ONLYHEADER)
    #define DEBUG_LOG(fmt, ...) NSLog(@"%s:%d " fmt, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
  #else
    #define DEBUG_LOG(fmt, ...) Logger(@"%s:%d " fmt, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
  #endif
#else
  #define DEBUG_LOG(fmt, ...)
#endif

#if !defined(USE_ONLYHEADER)
    #ifdef __cplusplus
        extern "C" {
    #endif
            
    void Logger(NSString* fmt, ...);
            
    #ifdef __cplusplus
        }
    #endif
#endif
