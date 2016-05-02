//
//  main.m
//  the_love_letter_mystery
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
            NSString * originString = [NSString stringWithUTF8String:string];
            
            int reductionCounter = 0;
            for (NSInteger i=0, j=originString.length-1; i<=j; ++i,--j) {
                int iASCII = (int)[originString characterAtIndex:i];
                int jASCII = (int)[originString characterAtIndex:j];
                reductionCounter += abs((iASCII - jASCII));
            }
            printf("%d\n",reductionCounter);
        }
    }
    return 0;
}
