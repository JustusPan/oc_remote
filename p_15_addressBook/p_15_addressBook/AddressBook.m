//
//  AddressBook.m
//  p_15_addressBook
//
//  Created by PanJingtian on 4/9/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

-(instancetype) initWithName: (NSString *) name {
    self = [super init];
    
    if(self) {
        bookName = [NSString stringWithString: name];
        book =  [NSMutableArray array];
    }
    return self;
}

-(instancetype) init {
    return [self initWithName: @"NoName"];
}

-(void) addCard: (AddressCard *) theCard {
    [book addObject: theCard];
}

-(int) entries {
    return [book count];
}

-(void) list {
    NSLog(@"==========Content of: %@ ==========", bookName);
    for (AddressCard *theCard in  book)
        NSLog(@"%-20s %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
    NSLog(@"=====================================================");
    
}

@end
