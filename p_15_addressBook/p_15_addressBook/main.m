//
//  main.m
//  p_15_addressBook
//
//  Created by PanJingtian on 4/9/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        AddressCard *card1 = [[AddressCard alloc] init];
        [card1 setName: aName];
        [card1 setEmail: aEmail];
        [card1 print];
    }
    return 0;
}