//
//  HeSysbsModel.h
//  huayoutong
//
//  Created by HeDongMing on 16/3/2.
//  Copyright © 2016年 HeDongMing. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HeSysbsModel : NSObject
@property(strong,nonatomic)NSString *seesionid; //本次登录的sessionid
@property(strong,nonatomic)User *user;//用户
@property(strong,nonatomic)NSArray *albumArray;//当前用户相册的可操作权限

@property(assign,nonatomic)NSInteger fansNum;
@property(assign,nonatomic)NSInteger ticketNum;
@property(assign,nonatomic)NSInteger followNum;

@property(strong,nonatomic)NSMutableArray *fansArray;
@property(strong,nonatomic)NSMutableArray *ticketArray;
@property(strong,nonatomic)NSMutableArray *followArray;
@property(strong,nonatomic)NSDictionary *userLocationDict;
@property(assign,nonatomic)NSInteger waitingConfirmNum;

+ (HeSysbsModel *)getSysModel;

@end
