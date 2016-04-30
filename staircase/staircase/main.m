//
//  main.m
//  staircase
//
//  Created by PanJingtian on 4/30/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        scanf("%i",&n);
        
        for (int i = 0;i<n;++i) {
            int j;
            for (j = 0;j<n-i-1;++j) {
                printf(" ");
                
            }
            for (;j<n;++j) {
                printf("#");
                
            }
            printf("\n");
        }
    }
    return 0;
}
