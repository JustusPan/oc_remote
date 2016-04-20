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

-(void) removeCard: (AddressCard *) theCard {
    //[book removeObjectIdenticalTo: theCard];
    [book removeObject: theCard];
}

//-(void) sort {
//    [book sortUsingSelector: @selector(compareNames:)];
//}

-(void) sort {
    [book sortUsingComparator:
     ^(id obj1, id obj2) {
         return [[obj1 name] compare: [obj2 name]];
     }];
}

-(int) entries {
    return [book count];
}

-(void) list {
    NSLog(@"==========Content of: %@ ==========", bookName);
    for (AddressCard *theCard in  book)
        NSLog(@"%-20s %-32s", [theCard.name UTF8String], [theCard.email UTF8String]);
        NSLog(@"=====================================================");
    //[self enumerateObejctsUsingBlock: ^(AddressCard *theCard, NSUInteger idx, BOOL *stop) {
    //    NSLog(@"%-20s %-30s", [theCard.name UTF8String], [theCard.email UTF8String]);
    //    NSLog(@"=====================================================");
    //}];
    
}

-(AddressCard *) lookup: (NSString *) theName {
    for (AddressCard *theCard in book) {
        if ([theCard.name caseInsensitiveCompare: theName] == NSOrderedSame) {
            return theCard;
        }
    }
    return nil;
}

-(NSIndexSet *) lookupAll: (NSString *) theName {
    NSIndexSet *result = [book indexesOfObjectsPassingTest:
                          ^(id obj, NSUInteger idx, BOOL *stop) {
                              if ([[obj name] caseInsensitiveCompare: theName] == NSOrderedSame) {
                                  return YES;
                              } else {
                                  return NO;
                              }
                          }];
    return result;
}

@end
