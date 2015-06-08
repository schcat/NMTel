//
//  BNRItemStore.h
//  0526NMTel
//
//  Created by Zhixue Li on 5/26/15.
//  Copyright (c) 2015 Zhixue Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BNRItem;

@interface BNRItemStore : NSObject

@property (nonatomic, strong, readonly) NSArray *allItems;

+ (instancetype)sharedStore;
- (BNRItem *)createItem;
- (BNRItem *)createContacts;
- (void)removeItem:(BNRItem *)item;
- (void)moveItemAtIndex:(NSUInteger)fromIndex
                toIndex:(NSUInteger)toIndex;

@end
