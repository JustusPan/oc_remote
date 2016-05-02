//
//  main.m
//  gemstones
//
//  Created by PanJingtian on 5/2/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int lineNum;
        scanf("%d",&lineNum);
        
        char string[100];
        NSMutableCharacterSet * publicElement =[NSMutableCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz"];
        for (int i=0; i<lineNum; ++i) {
            scanf("%s",string);
            [publicElement formIntersectionWithCharacterSet:[NSCharacterSet characterSetWithCharactersInString:[NSString stringWithUTF8String:string]]];
        }
        
        //count method has not been provided officially, bad solution here
        printf("%d\n",(int)[publicElement performSelector:@selector(count)]);
    }
    return 0;
}
