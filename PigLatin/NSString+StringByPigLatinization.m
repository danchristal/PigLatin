//
//  NSString+StringByPigLatinization.m
//  PigLatin
//
//  Created by Dan Christal on 2016-09-09.
//  Copyright © 2016 Dan Christal. All rights reserved.
//

#import "NSString+StringByPigLatinization.h"



@implementation NSString (StringByPigLatinization)


-(NSString *)stringByPigLatinization{
    
    NSString *string = [self lowercaseString];
    NSArray *words = [string componentsSeparatedByString:@" "];
    NSRange vowelIndex;
    NSString *subString1;
    NSString *subString2;
    
    NSString *pigLatinWord;
    NSString *pigLatinString;
    
    NSCharacterSet *vowels = [NSCharacterSet characterSetWithCharactersInString:@"aeiou"];
    for (NSString* word in words) {
        
        pigLatinWord = [[NSString alloc] init];
        //find first occurence of vowel and move everything to the left onto the end, and appaned 'ay'
        
        vowelIndex = [word rangeOfCharacterFromSet:vowels];
        
        //substring before first vowel occurence
        subString1 = [word substringToIndex:vowelIndex.location];
        
        //substring after first vowel occurence
        subString2 = [word substringFromIndex:vowelIndex.location];
        
        
        //append strings to form piglatin word
        pigLatinWord = [pigLatinWord stringByAppendingString:subString2];
        pigLatinWord = [pigLatinWord stringByAppendingString:subString1];
        pigLatinWord = [pigLatinWord stringByAppendingString:@"ay"];
        
        if(!pigLatinString){
            pigLatinString = pigLatinWord;
        } else {
            pigLatinString = [pigLatinString stringByAppendingString:@" "];
            pigLatinString = [pigLatinString stringByAppendingString:pigLatinWord];
            
        }
    }
    
    return pigLatinString;
}

@end
