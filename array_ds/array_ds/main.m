//
//  main.m
//  array_ds
//
//  Created by PanJingtian on 4/28/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        scanf("%i",&n);
        int curInt;
        NSMutableArray *myArray = [[NSMutableArray alloc] initWithCapacity: n];
        for(int arr_i = 0; arr_i < n; arr_i++){
            scanf("%d",&curInt);
            [myArray addObject: [NSNumber numberWithInt: curInt]];
        }
        
        NSEnumerator *reverseArrayEr = [myArray reverseObjectEnumerator];
        id anObject;
        
        while (anObject = [reverseArrayEr nextObject]) {
            printf("%ld ", (long)[anObject integerValue]);
        }
        printf("\n");
    }
    return 0;
}
