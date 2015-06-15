//
//  main.m
//  RandomItems
//
//  Created by G.D. Sanders on 6/14/15.
//  Copyright (c) 2015 DigitalEquity, Inc. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
       // Create a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc] init];
        
        // Send a message addObject to the NSMutableArray pointed by the variable items, passing strings
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        
        // Send another message, insertObject:atIndex, to that same array
        [items insertObject:@"Zero" atIndex:0];
        
        // For every item in the items array...
        for (NSString *item in items) {
            // Log the description of the item
            NSLog(@"%@", item);
        }
        
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Corvette"
                                           valueInDollars:10000 serialNumber:@"A1B1234"];
        
        BNRItem *itemWithName = [[BNRItem alloc]initWithItemName:@"Blue angel jet"];
        NSLog(@"%@", itemWithName);
        
        BNRItem *itemWithNoName = [[BNRItem alloc] init];
        NSLog(@"%@", itemWithNoName);
        
        NSLog(@"%@", item);
        
        
        
        // Destroy the mutable array object
        items = nil;
        
    }
    return 0;
}

