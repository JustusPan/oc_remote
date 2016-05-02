//
//  main.m
//  alternating_characters
//
//  Created by PanJingtian on 5/2/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int lineNum;
        scanf("%d", &lineNum);
        char string[100000];
        
        for (int i=0; i<lineNum; ++i) {
            scanf("%s",string);
            NSString * originString = [NSString stringWithUTF8String:string];
            
            int deletionCounter = 0;
            unichar prev = [originString characterAtIndex:0];
            for (NSInteger charIndex=1; charIndex<originString.length; ++charIndex) {
                if (prev != [originString characterAtIndex:charIndex]) {
                    prev = [originString characterAtIndex:charIndex];
                } else {
                    ++deletionCounter;
                }
            }
            printf("%d\n",deletionCounter);
        }
    }
    return 0;
}
