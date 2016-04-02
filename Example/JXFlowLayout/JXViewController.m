//
//  JXViewController.m
//  JXFlowLayout
//
//  Created by luqyluqe on 04/02/2016.
//  Copyright (c) 2016 luqyluqe. All rights reserved.
//

#import "JXViewController.h"
#import "JXFlowLayout.h"

@interface JXViewController ()

@end

@implementation JXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    JXFlowLayout* flowLayout=[JXFlowLayout flowLayoutWithFrame:self.view.bounds configuration:[JXFlowLayoutConfiguration defaultConfiguration]];
    for (int i=0; i<40; i++) {
        UIView* item=[self getLabel];
        [flowLayout appendItem:item];
    }
    [self.view addSubview:flowLayout];
}

-(UILabel*)getLabel
{
    UILabel* label=[[UILabel alloc] init];
    label.frame=CGRectMake(0, 0, 40+rand()%40, 16+rand()%16);
    label.backgroundColor=[UIColor blueColor];
    label.textColor=[UIColor whiteColor];
    label.font=[UIFont systemFontOfSize:8];
    label.textAlignment=NSTextAlignmentCenter;
    label.text=@"JXFlowLayout";
    return label;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
