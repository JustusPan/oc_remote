//
//  main.m
//  p_15_addressBook
//
//  Created by PanJingtian on 4/9/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"
#import "AddressBook.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSString *aName = @"Julia Kochan";
        NSString *aEmail = @"jewls337@axlc.com";
        NSString *bName = @"Tony Iannino";
        NSString *bEmail = @"tony.iannino@techfitness.com";
        NSString *cName = @"Stephen Kochan";
        NSString *cEmail = @"steve@classroomM.com";
        NSString *dName = @"Jamie Baker";
        NSString *dEmail = @"jbaker@classroomM.com";
        
        AddressCard *card1 = [[AddressCard alloc] init];
        AddressCard *card2 = [[AddressCard alloc] init];
        AddressCard *card3 = [[AddressCard alloc] init];
        AddressCard *card4 = [[AddressCard alloc] init];
        
        AddressBook *myBook = [[AddressBook alloc]
                               initWithName: @"Linda's Address Book"];
        
        AddressCard *myCard;
        
        //NSLog(@"Entries in address book after creation: %i", [myBook entries]);
        
        [card1 setName: aName andEmail: aEmail];
        [card2 setName: bName andEmail: bEmail];
        [card3 setName: cName andEmail: cEmail];
        [card4 setName: dName andEmail: dEmail];
        
        [myBook addCard: card1];
        [myBook addCard: card2];
        [myBook addCard: card3];
        [myBook addCard: card4];
        
        NSLog(@"Lookup: stephen Kochan");
        myCard = [myBook lookup: @"stephen Kochan"];
        
        if (myCard != nil) {
            [myCard print];
        } else {
            NSLog(@"Not found!");
        }
        
        //NSLog(@"Entries in address book after adding cards: %i", [myBook entries]);
        
        //[myBook list];
        //[myBook removeCard: myCard];
        [myBook list];
        [myBook sort];
        [myBook list];
        
    }
    return 0;
}