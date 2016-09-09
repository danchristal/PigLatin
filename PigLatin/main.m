//
//  main.m
//  PigLatin
//
//  Created by Dan Christal on 2016-09-09.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "NSString+StringByPigLatinization.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {

        NSString *test = @"Hello world";
        
        NSLog(@"piglatin is: %@", [test stringByPigLatinization]);
        
    }
    return 0;
}
