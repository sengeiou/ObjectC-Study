//
//  AddressBook.h
//  program15-AddressBook
//
//  Created by YanTian Yu on 15/5/30.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, copy) NSMutableArray *book;

-(id) initWithName: (NSString *) name;

-(void) addCard: (AddressCard *) theCard;

-(void) removeCard: (AddressCard *) theCard;

-(NSUInteger) entries;

-(NSMutableArray *) lookup: (NSString *) theName;

-(BOOL) removeName: (NSString *) theName;

-(void) sort;

-(void) list;

@end
