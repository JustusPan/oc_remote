//
//  main.m
//  plus_minus
//
//  Created by PanJingtian on 4/30/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        scanf("%i",&n);
        int curInt;
        NSMutableArray *array = [[NSMutableArray alloc] initWithCapacity:n];
        for(int arr_i = 0; arr_i < n; arr_i++){
            scanf("%d",&curInt);
            [array addObject:[NSNumber numberWithInt:curInt]];
        }
        
        NSEnumerator *arrayEr = [array objectEnumerator];
        id anObject;
        int posCounter = 0;
        int negCounter = 0;
        int zeroCounter = 0;
        while (anObject = [arrayEr nextObject]) {
            if (0 < (int)[anObject integerValue]) {
                ++posCounter;
            } else if (0 > (int)[anObject integerValue]) {
                ++negCounter;
            } else {
                ++zeroCounter;
            }
        }
        double posFrac = (double)posCounter/n;
        double negFrac = (double)negCounter/n;
        double zeroFrac = (double)zeroCounter/n;
        printf("%.6f\n%.6f\n%.6f\n",posFrac,negFrac,zeroFrac);
    }
    return 0;
}
