//
//  CallViewController.m
//  MyPhoneCall
//
//  Created by XmL on 13-3-15.
//  Copyright (c) 2013年 XmL. All rights reserved.
//

#import "CallViewController.h"

@interface CallViewController ()

@end

@implementation CallViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)callPhone:(UIButton *)btn
{
    NSString * phoneNumber = [NSString stringWithFormat:@"tel://18943132390"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumber]];
    
    
    //可变电话号码
//    NSString * lJPhoneNumeber = @"18943132390";
//    NSString * phoneNumberTwo = [[NSString alloc] initWithFormat:@"tel://%@",lJPhoneNumeber];
//    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:phoneNumberTwo]];

}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    UIButton * button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(120, 200, 80, 40);
    [button setTitle:@"立即拨号" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(callPhone:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
