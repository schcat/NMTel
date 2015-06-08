//
//  BNRItemStore.m
//  0526NMTel
//
//  Created by Zhixue Li on 5/26/15.
//  Copyright (c) 2015 Zhixue Li. All rights reserved.
//

#import "BNRItemStore.h"
#import "BNRItem.h"

@interface BNRItemStore()
@property (nonatomic) NSMutableArray *privateItems;

@end

@implementation BNRItemStore

+ (instancetype)sharedStore
{
    static BNRItemStore *sharedStore = nil;
    
    if (!sharedStore) {
        sharedStore = [[self alloc] initPrivate];
    }
    return sharedStore;
}

- (instancetype)init
{
    @throw [NSException exceptionWithName:@"Singleton"
                                   reason:@"Use +[BNRItemStore sharedStore]"
                                 userInfo:nil];
    return nil;
}

- (instancetype)initPrivate
{
    self = [super init];
    if (self) {
        _privateItems = [[NSMutableArray alloc] init];
    }
    return self;
}
- (NSArray *)allItems
{
    return self.privateItems;
  //  return [self.privateItems copy];
}

- (BNRItem *)createItem
{
    BNRItem *item = [BNRItem initItem];
    [self.privateItems addObject:item];
    return item;
}
-(void)removeItem:(BNRItem *)item
{
    [self.privateItems removeObjectIdenticalTo:item];
}
- (void)moveItemAtIndex:(NSUInteger)fromIndex
                toIndex:(NSUInteger)toIndex
{
    if (fromIndex == toIndex) {
        return;
    }
    BNRItem *item = self.privateItems[fromIndex];
    [self.privateItems removeObjectAtIndex:fromIndex];
    [self.privateItems insertObject:item atIndex:toIndex];
}

- (BNRItem *)createContacts
{
    BNRItem *item1 = [[BNRItem alloc] initWithItemName:@"联系人姓名"
                                       NMTelCellPhone:@"联系人手机号码"
                                        NMTelLandLine:@"联系人分机号"
                                    NMTelContactEmail:@"联系人邮箱地址"];
    [self.privateItems addObject:item1];
    //重复多个
    return item1;
}

@end
