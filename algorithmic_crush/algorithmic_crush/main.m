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
        
        NSMutableArray *array = [[NSMutableArray alloc] init];
        for (int i = 0; i<listSize;++i) {
            [array addObject:[NSNumber numberWithLongLong:0]];
        
        }
        for (int i = 0; i<opNum; ++i) {
            int startIndex, endIndex, incrValue;
            scanf("%d %d %d", &startIndex, &endIndex, &incrValue);
            long long int posValue = [[array objectAtIndex:(startIndex-1)] longLongValue] + (long long)incrValue;
            [array replaceObjectAtIndex:startIndex-1 withObject:[NSNumber numberWithLongLong:posValue]];
            
            if (endIndex<listSize) {
                long long int negValue = [[array objectAtIndex:endIndex] longLongValue] - (long long)incrValue;
                [array replaceObjectAtIndex:endIndex withObject:[NSNumber numberWithLongLong:negValue]];
            }
        }
        
        long long int max = 0;
        long long int curSum = 0;
        for (NSNumber *num in array) {
            curSum += num.longLongValue;
            max=(max>curSum)?max:curSum;
        }
        printf("%lld\n", max);
        
    }
    return 0;
}
