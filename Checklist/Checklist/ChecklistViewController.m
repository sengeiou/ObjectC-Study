//
//  ViewController.m
//  Checklist
//
//  Created by YanTian Yu on 15/10/16.
//  Copyright © 2015年 ioslearning. All rights reserved.
//

#import "ChecklistViewController.h"

@interface ChecklistViewController ()

@end

@implementation ChecklistViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 5;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ChecklistItem"];
    return cell;
}

@end
