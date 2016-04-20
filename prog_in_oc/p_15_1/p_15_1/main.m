//
//  main.m
//  p_15_1
//
//  Created by PanJingtian on 4/3/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        //integer
        
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li",(long)myInt);
        
        //long
        
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx", [myNumber longValue]);
        
        //char
        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog(@"%c", [myNumber charValue]);
        
        //float
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog(@"%g", [floatNumber floatValue]);
        
        //double
        myNumber = [NSNumber numberWithDouble: 12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);
        
        //error
        NSLog(@"%li", (long) [myNumber integerValue]);
        
        if ([intNumber isEqualToNumber: floatNumber] == YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");
        
        if ([intNumber compare: myNumber] == NSOrderedAscending)
            NSLog(@"First number is less than second");
        
    }
    return 0;
}
