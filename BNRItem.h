//
//  BNRItem.h
//  NMTelInfo
//
//  Created by Zhixue Li on 5/27/15.
//  Copyright (c) 2015 Zhixue Li. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject
{
    NSString *_NMTelContactName;
    NSString *_NMTelCellPhone;
    NSString *_NMTelLandLine;
    NSString *_NMTelContactEmail;
}
- (instancetype)initWithItemName:(NSString *)ContactName
                  NMTelCellPhone:(NSString *)CellPhone
                   NMTelLandLine:(NSString *)LandLine
                   NMTelContactEmail:(NSString *)ContactEmail;

+ (instancetype)initItem;

@property (nonatomic, copy) NSString *NMTelContactName;
@property (nonatomic, copy) NSString *NMTelCellPhone;
@property (nonatomic, copy) NSString *NMTelLandLine;
@property (nonatomic, copy) NSString *NMTelContactEmail;
@end
