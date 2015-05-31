//
//  AddressCard.m
//  program15-AddressBook
//
//  Created by YanTian Yu on 15/5/30.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard

@synthesize fname, lname, email, state, city;
@synthesize zip, country, phone;

-(void) setFName:(NSString *)first andLName:(NSString *)last andEmail:(NSString *)theEmail
{
    self.fname = first;
    self.lname = last;
    self.email = theEmail;
    
    self.state = @" ";
    self.city = @" ";
    self.zip = @" ";
    self.country = @" ";
    self.phone = @" ";
}

-(void) setFName:(NSString *)first andLName:(NSString *)last andEmail:(NSString *)theEmail andState:(NSString *)State andCity:(NSString *)City andZip:(NSString *)Zip andCountry:(NSString *)Country andPhone:(NSString *)pnumber
{
    self.fname = first;
    self.lname = last;
    self.email = theEmail;
    self.state = State;
    self.city = City;
    self.zip = Zip;
    self.country = Country;
    self.phone = pnumber;
}

-(BOOL) isEqual:(AddressCard *)theCard
{
    if([self.fname isEqualToString:theCard.fname] == YES &&
       [self.lname isEqualToString:theCard.lname] == YES &&
       [self.email isEqualToString:theCard.email] == YES &&
       [self.state isEqualToString:theCard.state] == YES &&
       [self.city isEqualToString:theCard.city] == YES &&
       [self.zip isEqualToString:theCard.zip] == YES &&
       [self.country isEqualToString:theCard.country] == YES &&
       [self.phone isEqualToString:theCard.phone] == YES )
        return YES;
    else
        return NO;
}

-(BOOL) lookupCardForString:(NSString *)str
{
    if ([[self fname] rangeOfString: str
                            options: NSCaseInsensitiveSearch].location != NSNotFound ||
        [[self lname] rangeOfString: str
                            options: NSCaseInsensitiveSearch].location != NSNotFound ||
        [[self city] rangeOfString: str
                           options: NSCaseInsensitiveSearch].location != NSNotFound ||
        [[self state] rangeOfString: str
                            options: NSCaseInsensitiveSearch].location != NSNotFound ||
        [[self country] rangeOfString: str
                              options: NSCaseInsensitiveSearch].location != NSNotFound ||
        [[self phone] rangeOfString: str
                            options: NSCaseInsensitiveSearch].location != NSNotFound ||
        [[self email] rangeOfString: str
                            options: NSCaseInsensitiveSearch].location != NSNotFound ||
        [[self zip] rangeOfString: str
                          options: NSCaseInsensitiveSearch].location != NSNotFound)
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

-(NSComparisonResult) compareNames:(id)element
{
    return [lname compare:[element lname]];
}

-(void) print
{
    NSMutableString *fullName = [[NSMutableString alloc] init];
    [fullName appendString:fname];
    [fullName appendString:@" "];
    [fullName appendString:lname];
    
    NSMutableString *address = [[NSMutableString alloc] init];
    [address appendString: city];
    [address appendString: @", "];
    [address appendString: state];
    [address appendString: @", "];
    [address appendString: zip];
    
    NSLog(@"=======================================");
    NSLog(@"|**                                 **|");
    NSLog(@"| %-35s |", [fullName UTF8String]);
    NSLog(@"|                                     |");
    NSLog(@"| %-35s |", [address UTF8String]);
    NSLog(@"| %-35s |", [country UTF8String]);
    NSLog(@"| Phone: %-29s|", [phone UTF8String]);
    NSLog(@"| Email: %-29s|", [email UTF8String]);
    NSLog(@"|                                     |");
    NSLog(@"|        O       <^>        O         |");
    NSLog(@"=======================================");
}

@end
