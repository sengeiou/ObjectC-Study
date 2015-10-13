//
//  ViewController.m
//  CrazyDrag
//
//  Created by YanTian Yu on 15/10/11.
//  Copyright © 2015年 ioslearning. All rights reserved.
//

#import "ViewController.h"

@interface ViewController (){
    int currentValue;
}
- (IBAction)sliderMove:(UISlider*)sender;
@property (strong, nonatomic) IBOutlet UISlider *slider;
@end

@implementation ViewController

@synthesize slider;

- (void)viewDidLoad {
    [super viewDidLoad];
    currentValue = self.slider.value;
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
    NSString *message = [NSString stringWithFormat:@"滑动条当前数值是：%d",currentValue];
    [[[UIAlertView alloc]initWithTitle:@"hello, world~" message:message delegate:nil cancelButtonTitle:@"yuiyuiyui~~" otherButtonTitles:nil, nil]show];
}
- (IBAction)sliderMove:(id)sender {
    UISlider *slider = (UISlider*) sender;
    currentValue = lround(slider.value);
}

@end
