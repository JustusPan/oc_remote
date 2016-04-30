//
//  main.m
//  simple_array_sum
//
//  Created by PanJingtian on 4/20/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int sum(int *arr, int n) {
    int arrSum = 0;
    for (int arr_i = 0;arr_i<n;++arr_i) {
        arrSum += arr[arr_i];
    }
    return arrSum;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        scanf("%i",&n);
        int arr[n];
        for(int arr_i = 0; arr_i < n; arr_i++){
            scanf("%d",&arr[arr_i]);
        }
        int res = sum(arr,n);
        printf("%d",res);
    }
    return 0;
}
