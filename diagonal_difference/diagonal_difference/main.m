//
//  main.m
//  diagonal_difference
//
//  Created by PanJingtian on 4/20/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int abs(int input) {
    return (input>=0)?input:-input;
}

int getDiagonalDifference(NSMutableArray *array2d, int n) {
    int sum = 0;
    for (int i = 0,j=0;i < n; ++i,++j) {
        sum += ([[[array2d objectAtIndex:i] objectAtIndex:j] integerValue] - [[[array2d objectAtIndex:i] objectAtIndex:(n-j-1)] integerValue]);
    }
    return abs(sum);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //get the size
        int n;
        scanf("%i",&n);
        
        //generate 2D-Array
        NSMutableArray *array2d = [[NSMutableArray alloc] initWithCapacity: n];
        int curInt;
        for(int a_i = 0; a_i < n; a_i++){
            NSMutableArray *rowArray = [[NSMutableArray alloc] initWithCapacity: n];
            for(int a_j = 0; a_j < n; a_j++){
                scanf("%d",&curInt);
                [rowArray addObject:[NSNumber numberWithInt:curInt]];
            }
            [array2d addObject:rowArray];
        }
        int res = getDiagonalDifference(array2d, n);
        printf("%d\n", res);
    }
    return 0;
}
