//
//  ViewController.m
//  DisplayAlert
//
//  Created by YanTian Yu on 15/6/18.
//  Copyright (c) 2015年 YanTian Yu. All rights reserved.
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

-(void) viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];
    
    UIAlertView *alertView = [[UIAlertView alloc]
                              initWithTitle:@"Alert"
                              message:@"You've been delivered an alert"
                              delegate:nil
                              cancelButtonTitle:@"Cancel"
                              otherButtonTitles:@"OK", nil
                              ];
    [alertView setAlertViewStyle:UIAlertViewStylePlainTextInput];
    [alertView show];
}

-(void) viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
}

-(void)viewDidDisappear:(BOOL)animated
{
    [super viewDidDisappear:animated];
}

-(BOOL) shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation
{
    if ([[UIDevice currentDevice] userInterfaceIdiom] == UIUserInterfaceIdiomPhone) {
        return (toInterfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
    } else {
        return YES;
    }
}

@end
