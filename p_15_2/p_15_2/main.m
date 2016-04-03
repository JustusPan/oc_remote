//
//  main.m
//  p_15_2
//
//  Created by PanJingtian on 4/3/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        intNumber = @100;
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long)myInt);
        
        
        //NSLog(@"Hello, World!");
    }
    return 0;
}
