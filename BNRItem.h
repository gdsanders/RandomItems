//
//  BNRItem.h
//  RandomItems
//
//  Created by G.D. Sanders on 6/14/15.
//  Copyright (c) 2015 DigitalEquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject

{
    
    // Instance variables
    
    NSString *_itemName;
    NSString *_serialNumber;
    int _valueInDollars;
    NSDate *_dateCreated;
}

// Class methods

+ (instancetype)randomItem;

// Designated initializer for BNRItem
- (instancetype)initWithItemName:(NSString *)name
                  valueInDollars:(int)value
                    serialNumber:(NSString *)sNumber;

- (instancetype)initWithItemName:(NSString *)name;

// Instance methods

- (void)setItemName:(NSString *)str;
-(NSString *)itemName;

- (void)setSerialNumber:(NSString *)str;
- (NSString *)serialNumber;

- (void)setValueInDollars:(int)v;
-(int)valueInDollars;

-(NSDate *)dateCreated;


@end
