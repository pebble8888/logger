//
//  Copyright (c) 2014 pebble8888. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Logger.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // sample1
        {
            NSLog( @"sample1 begin" );
            DEBUG_LOG( @"" );
            NSLog( @"sample1 end" );
        }
        // sample2
        {
            NSLog( @"sample2 begin" );
            for( int i = 0; i < 10; ++i ){
                DEBUG_LOG( @"i[%d]", i );
            }
            NSLog( @"sample2 end" );
        }
        // sample3
        {
            NSLog( @"sample3 begin" );
            for( int i = 0; i < 1000; ++i ){
                DEBUG_LOG( @"same string" );
            }
            NSLog( @"sample3 end" );
        }
    }
    return 0;
}
