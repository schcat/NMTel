//
//  BNRItem.m
//  NMTelInfo
//
//  Created by Zhixue Li on 5/27/15.
//  Copyright (c) 2015 Zhixue Li. All rights reserved.
//

#import "BNRItem.h"
@implementation BNRItem

- (NSString *)description
{
    NSString *descriptionString =
    [[NSString alloc] initWithFormat:@"%@   %@",
     self.NMTelContactName,
     self.NMTelCellPhone];
  //   self.NMTelLandLine,
  //   self.NMTelContactEmail];
    
    return descriptionString;
}
- (instancetype)initWithItemName:(NSString *)ContactName
                  NMTelCellPhone:(NSString *)CellPhone
                   NMTelLandLine:(NSString *)LandLine
               NMTelContactEmail:(NSString *)ContactEmail
{
    self = [super init];
    if (self) {
        _NMTelContactName = ContactName;
        _NMTelCellPhone = CellPhone;
        _NMTelLandLine = LandLine;
        _NMTelContactEmail = ContactEmail;
    }
    return self;
}

+ (instancetype)initItem
{
    BNRItem *newItem = [[self alloc] initWithItemName:@""
                                       NMTelCellPhone:@""
                                        NMTelLandLine:@""
                                    NMTelContactEmail:@""];
    return newItem;
}

@end
