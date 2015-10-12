//
//  ViewController.m
//  CrazyDrag
//
//  Created by YanTian Yu on 15/10/11.
//  Copyright © 2015年 ioslearning. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
    [[[UIAlertView alloc]initWithTitle:@"hello, world~" message:@"hahahhahaha~~~" delegate:nil cancelButtonTitle:@"yuiyuiyui~~" otherButtonTitles:nil, nil]show];
}

- (IBAction)showAlert2:(id)sender {
    [[[UIAlertView alloc]initWithTitle:@"您好，苍老师" message:@"听说您的新贴转发了499次" delegate:nil cancelButtonTitle:@"我来帮转1次，你懂的" otherButtonTitles:nil, nil]show];
}

@end
