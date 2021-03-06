//
//  AddressCard.m
//  p_15_addressBook
//
//  Created by PanJingtian on 4/9/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
//{
//    NSString *name;
//    NSString *email;
//}

@synthesize name, email;



//-(void) setName: (NSString *) theName {
//    if (name != theName) {
//        name = [NSString stringWithString: theName];
//    }
//}
//
//-(void) setEmail: (NSString *) theEmail {
//    if (email != theEmail) {
//        email = [NSString stringWithString: theEmail];
//    }
//}
//
//-(NSString *) name {
//    return name;
//}
//
//-(NSString *) email {
//    return email;
//}

-(void) print {
    NSLog(@"===================================");
    NSLog(@"|                                 |");
    NSLog(@"| %-31s |", [name UTF8String]);
    NSLog(@"| %-31s |", [email UTF8String]);
    NSLog(@"|                                 |");
    NSLog(@"|                                 |");
    NSLog(@"|                                 |");
    NSLog(@"|         O            O          |");
    NSLog(@"===================================");
}

-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail {
    self.name = theName;
    self.email = theEmail;
}

-(BOOL) isEqual: (AddressCard *) theCard {
    if ([name isEqualToString: theCard.name] == YES &&
        [email isEqualToString: theCard.email] == YES) {
        return YES;
    } else {
        return NO;
    }
}

-(NSComparisonResult) compareNames: (id) element {
    return [name compare: [element name]];
}

@end
