//
//  AddressCard.h
//  p_15_addressBook
//
//  Created by PanJingtian on 4/9/16.
//  Copyright © 2016 ulab. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *name, *email;

//-(void) setName: (NSString *) theName;
//-(void) setEmail: (NSString *) theEmail;
//-(NSString *) name;
//-(NSString *) email;

-(void) print;
-(void) setName: (NSString *) theName andEmail: (NSString *) theEmail;

@end
