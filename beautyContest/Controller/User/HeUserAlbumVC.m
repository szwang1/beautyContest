//
//  HeUserAlbumVC.m
//  beautyContest
//
//  Created by Tony on 16/8/25.
//  Copyright © 2016年 iMac. All rights reserved.
//

#import "HeUserAlbumVC.h"

@interface HeUserAlbumVC ()

@end

@implementation HeUserAlbumVC

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectZero];
        label.backgroundColor = [UIColor clearColor];
        label.font = [UIFont boldSystemFontOfSize:20.0];
        label.textColor = [UIColor whiteColor];
        label.textAlignment = NSTextAlignmentCenter;
        self.navigationItem.titleView = label;
        label.text = @"照片墙";
        [label sizeToFit];
        self.title = @"照片墙";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self initializaiton];
    [self initView];
}

- (void)initializaiton
{
    [super initializaiton];
}

- (void)initView
{
    [super initView];
    UIBarButtonItem *editItem = [[UIBarButtonItem alloc] init];
    editItem.title = @"编辑";
    editItem.target = self;
    editItem.action = @selector(editAlbum:);
    self.navigationItem.rightBarButtonItem = editItem;
}

- (void)editAlbum:(UIBarButtonItem *)item
{
    NSLog(@"item = %@",item);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
