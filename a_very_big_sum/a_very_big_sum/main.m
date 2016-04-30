//
//  main.m
//  a_very_big_sum
//
//  Created by PanJingtian on 4/20/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

long long int bigSum(long long int *arr, int n) {
    long long int bigSum = 0;
    for (int arrIndex = 0;arrIndex<n;++arrIndex) {
        bigSum += arr[arrIndex];
    }
    return bigSum;
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        scanf("%i",&n);
        long long int arr[n];
        for(int arr_i = 0; arr_i < n; arr_i++){
            scanf("%lld",&arr[arr_i]);
        }
        long long int res = bigSum(arr,n);
        printf("%lld", res);
    }
    return 0;
}
