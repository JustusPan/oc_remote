//
//  main.m
//  2d_array
//
//  Created by PanJingtian on 4/30/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int hourglassSum(int startRow, int startColumn, NSMutableArray *array2D, int hourglassLength) {
    int hourGlassSum = 0;
    for (int i = startRow; i<startRow+hourglassLength;++i) {
        int rowSum = 0;
        if (i == startRow || i == startRow+hourglassLength-1) {
            for (int j = startColumn; j<startColumn+hourglassLength;++j) {
                rowSum += [[[array2D objectAtIndex:i] objectAtIndex:j] integerValue];
                
            }
        } else {
            rowSum += [[[array2D objectAtIndex:i] objectAtIndex:startColumn + (hourglassLength+1)/2 - 1] integerValue];
        }
        hourGlassSum += rowSum;
    }
    return hourGlassSum;
}

int maxHourglassSum (NSMutableArray *array2D) {
    int rowLength = 6;
    int columnLength = 6;
    int hourglassLength = 3;
    int max = -9 * 7;
    
    for (int i = 0; i<columnLength-hourglassLength+1; ++i) {
        for (int j = 0; j<rowLength-hourglassLength+1; ++j) {
            int sum = hourglassSum(i,j,array2D, hourglassLength);
            max = (max>sum)?max:sum;
        }
    }
    return max;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        //generate 2D-Array
        NSMutableArray *array2D = [[NSMutableArray alloc] initWithCapacity:6];
        for(int arr_i = 0; arr_i < 6; arr_i++){
            NSMutableArray *rowArray = [[NSMutableArray alloc] initWithCapacity:6];
            for(int arr_j = 0; arr_j < 6; arr_j++){
                int curInt;
                scanf("%d",&curInt);
                [rowArray addObject: [NSNumber numberWithInt: curInt]];
            }
            [array2D addObject: rowArray];
            //[rowArray release];
        }
        
        int result = maxHourglassSum(array2D);
        printf("%d\n",result);
        
        //clean up
        [array2D release];
    }
    return 0;
}
