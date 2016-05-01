//
//  main.m
//  algorithmic_crush
//
//  Created by PanJingtian on 5/1/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int listSize, opNum;
        scanf("%d %d", &listSize, &opNum);
        
        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:listSize];
        for (int i = 0; i<listSize;++i) {
            [array addObject:[NSNumber numberWithInt:0]];
        
        }
        for (int i = 0; i<opNum; ++i) {
            int startIndex, endIndex, incrValue;
            scanf("%d %d %d", &startIndex, &endIndex, &incrValue);
            for (int j = 0; j<listSize; ++j){
                if (j>=startIndex-1 && j<=endIndex-1) {
                    int newValue = (int)[[array objectAtIndex:j] integerValue] + incrValue;
                    [array replaceObjectAtIndex:j withObject:[NSNumber numberWithInt:newValue]];
                }
            }
        }
        
        int max = 0;
        for (NSNumber *num in array) {
            max = (max > num.intValue)?max:num.intValue;
        }
        printf("%d\n", max);
        
    }
    return 0;
}
