//
//  main.m
//  solve_me_first
//
//  Created by PanJingtian on 4/20/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int solveMeFirst(int a, int b) {
    // Hint: Type return a+b; below
    return a + b;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a,b,res;
        scanf("%d %d", &a, &b);
        res = solveMeFirst(a,b);
        printf("%d", res);
    }
    return 0;
}
