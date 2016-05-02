//
//  main.m
//  funny_string
//
//  Created by PanJingtian on 5/2/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int lineNum;
        scanf("%d", &lineNum);
        char string[10000];
        
        for (int i=0; i<lineNum; ++i) {
            scanf("%s",string);
            NSString *originString = [NSString stringWithUTF8String:string];
            int diffSum = 0;
            for (NSInteger i=0, j=originString.length-1; i<=j; ++i,--j) {
                int diff1 = (int)[originString characterAtIndex:i]-(int)[originString characterAtIndex:i+1];
                int diff2 = (int)[originString characterAtIndex:j]-(int)[originString characterAtIndex:j-1];
                diffSum += abs(diff1) - abs(diff2);
                if (diffSum != 0) break;
            }
            
            if (diffSum == 0) {
                printf("Funny\n");
            } else {
                printf("Not Funny\n");
            }
        }
    }
    return 0;
}
