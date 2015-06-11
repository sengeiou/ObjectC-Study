//
//  ViewController.m
//  program21-iPhone_1
//
//  Created by YanTian Yu on 15/6/11.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize display;

-(IBAction) click1
{
    display.text = @"1";
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
