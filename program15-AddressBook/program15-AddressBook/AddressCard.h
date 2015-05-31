//
//  AddressCard.h
//  program15-AddressBook
//
//  Created by YanTian Yu on 15/5/30.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

@property (copy, nonatomic) NSString *fname, *lname, *email, *state, *city;
@property (copy, nonatomic) NSString *zip, *country, *phone;

-(void) setFName:(NSString *)first andLName : (NSString *) last
        andEmail: (NSString *) theEmail;

-(void) setFName: (NSString *) first andLName: (NSString *) last
        andEmail: (NSString *) theEmail andState: (NSString *) State
         andCity: (NSString *) City andZip: (NSString *) Zip
      andCountry: (NSString *) Country andPhone: (NSString *) pnumber;

-(BOOL) lookupCardForString: (NSString *) str;

-(BOOL) isEqual: (AddressCard *) theCard;

-(NSComparisonResult) compareNames: (id) element;

-(void) print;

@end
