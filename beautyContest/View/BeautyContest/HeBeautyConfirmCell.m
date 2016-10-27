//
//  HeBeautyConfirmCell.m
//  beautyContest
//
//  Created by HeDongMing on 2016/10/25.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "HeBeautyConfirmCell.h"

@implementation HeBeautyConfirmCell
@synthesize userImage;
@synthesize nameLabel;
@synthesize contentLabel;
@synthesize confirmDict;
/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier cellSize:(CGSize)cellsize
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier cellSize:cellsize];
    if (self) {
        CGFloat imageX = 10;
        CGFloat imageY = 10;
        CGFloat imageH = cellsize.height - 2 * imageY;
        CGFloat imageW = imageH;
        userImage = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"userDefalut_icon"]];
        userImage.frame = CGRectMake(imageX, imageY, imageW, imageH);
        userImage.layer.masksToBounds = YES;
        userImage.layer.cornerRadius = imageW / 2.0;
        [self addSubview:userImage];
        
        CGFloat nameX = CGRectGetMaxX(userImage.frame) + 5;
        CGFloat nameY = imageY;
        CGFloat nameH = imageH / 2.0;
        CGFloat nameW = SCREENWIDTH / 2.0 - nameX;
        nameLabel = [[UILabel alloc] initWithFrame:CGRectMake(nameX, nameY, nameW, nameH)];
        nameLabel.backgroundColor = [UIColor clearColor];
        nameLabel.textColor = [UIColor blackColor];
        nameLabel.font = [UIFont systemFontOfSize:14.0];
        nameLabel.text = @"王八";
        [self addSubview:nameLabel];
        
        CGFloat contentX = CGRectGetMaxX(userImage.frame) + 5;
        CGFloat contentY = CGRectGetMaxY(nameLabel.frame);
        CGFloat contentH = imageH / 2.0;
        CGFloat contentW = SCREENWIDTH - contentX - 80;
        contentLabel = [[UILabel alloc] initWithFrame:CGRectMake(contentX, contentY, contentW, contentH)];
        contentLabel.backgroundColor = [UIColor clearColor];
        contentLabel.textColor = [UIColor grayColor];
        contentLabel.font = [UIFont systemFontOfSize:15.0];
        contentLabel.text = @"内容";
        [self addSubview:contentLabel];
        
        CGFloat agreeY = imageY;
        CGFloat agreeH = imageH / 2.0;
        CGFloat agreeW = 60;
        CGFloat agreeX = SCREENWIDTH - 10 - agreeW;
        UIButton *agreeButton = [[UIButton alloc] initWithFrame:CGRectMake(agreeX, agreeY, agreeW, agreeH)];
        [agreeButton setTitle:@"同意" forState:UIControlStateNormal];
        [agreeButton setTitleColor:APPDEFAULTORANGE forState:UIControlStateNormal];
        [agreeButton.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [agreeButton.titleLabel setFont:[UIFont systemFontOfSize:13.0]];
        agreeButton.tag = 1;
        [self addSubview:agreeButton];
        [agreeButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
        
        agreeY = CGRectGetMaxY(agreeButton.frame);
        UIButton *rejectButton = [[UIButton alloc] initWithFrame:CGRectMake(agreeX, agreeY, agreeW, agreeH)];
        [rejectButton setTitle:@"拒绝" forState:UIControlStateNormal];
        [rejectButton setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [rejectButton.titleLabel setTextAlignment:NSTextAlignmentCenter];
        [rejectButton.titleLabel setFont:[UIFont systemFontOfSize:13.0]];
        rejectButton.tag = 2;
        [self addSubview:rejectButton];
        [rejectButton addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (void)buttonClick:(UIButton *)button
{
    NSMutableDictionary *mutableDict = [[NSMutableDictionary alloc] initWithDictionary:confirmDict];
    
    
    switch (button.tag) {
        case 1:
        {
            [mutableDict setObject:@YES forKey:@"isAgree"];
            break;
        }
        case 2:
        {
            [mutableDict setObject:@NO forKey:@"isAgree"];
            break;
        }
        default:
            break;
    }
    NSDictionary *dict = [[NSDictionary alloc] initWithDictionary:mutableDict];
    [self routerEventWithName:@"agreeButtonClick" userInfo:dict];
}


@end