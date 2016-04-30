//
//  main.m
//  time_conversion
//
//  Created by PanJingtian on 4/30/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString* time;
        char* time_temp = (char *)malloc(10240 * sizeof(char));
        scanf("%s",time_temp);
        time = [NSString stringWithFormat:@"%s", time_temp];
        
        NSString * amIdentifier = @"AM";
        NSString * pmIdentifier = @"PM";
        
        NSRange sufRange = {time.length - 2,2};
        NSRange preRange = {0,2};
        NSMutableString * mutableTime = [time mutableCopy];
        if ([time hasSuffix:amIdentifier]) {
            [mutableTime deleteCharactersInRange:sufRange];
        } else if ([time hasSuffix:pmIdentifier]) {
            [mutableTime deleteCharactersInRange:sufRange];
            NSArray <NSString *> * separatedSet = [mutableTime componentsSeparatedByString:@":"];
            int newhh = (int)[[separatedSet objectAtIndex:0] integerValue] + 12;
            [mutableTime replaceCharactersInRange:preRange withString:[NSString stringWithFormat:@"%d",newhh]];
        }
        
        printf("%s\n", [mutableTime UTF8String]);
    }
    return 0;
}
