//
//  main.m
//  diagonal_difference
//
//  Created by PanJingtian on 4/20/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>
int abs(int number) {
    return (number>=0)?number:(-number);
}

int getDiagonalDifference(int a[][3], int n) {
    int diagonalDifference = 0;
    for(int a_i = 0,a_j = 0; a_i < n; ++a_i,++a_j){
        diagonalDifference += (a[a_i][a_j]-a[a_i][n-a_j-1]);
    }
    return abs(diagonalDifference);
}

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int n;
        scanf("%i",&n);
        int a[n][n];
        for(int a_i = 0; a_i < n; a_i++){
            for(int a_j = 0; a_j < n; a_j++){
                scanf("%d",&a[a_i][a_j]);
            }
        }
        int res = getDiagonalDifference(a, n);
        printf("%d", res);
    }
    return 0;
}
