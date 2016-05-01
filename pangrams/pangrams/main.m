//
//  main.m
//  pangrams
//
//  Created by PanJingtian on 5/1/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        char string[1000];
        NSMutableCharacterSet * charSet = [[NSMutableCharacterSet alloc] init];
        NSCharacterSet * refSet = [NSCharacterSet characterSetWithCharactersInString:@"abcdefghijklmnopqrstuvwxyz"];
        
        while (scanf("%s",string) != EOF) {
            [charSet addCharactersInString:[[NSString stringWithUTF8String:string] lowercaseStringWithLocale:[NSLocale currentLocale]]];
        }
        
        if (YES == [charSet isSupersetOfSet:refSet]) {
            printf("pangram\n");
        } else {
            printf("not pangram\n");
        }
    }
    return 0;
}
