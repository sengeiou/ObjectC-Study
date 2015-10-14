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
    int targetValue;
    int score;
    int round;
}
- (IBAction)sliderMove:(UISlider*)sender;
- (IBAction)showAlert:(id)sender;
@property (strong, nonatomic) IBOutlet UISlider *slider;
@property (strong, nonatomic) IBOutlet UILabel *label;
@property (strong, nonatomic) IBOutlet UILabel *scoreLabel;
@property (strong, nonatomic) IBOutlet UILabel *roundLabel;
@end

@implementation ViewController

@synthesize slider;
@synthesize label;
@synthesize scoreLabel;
@synthesize roundLabel;

- (void)updateLabels{
    self.label.text = [NSString stringWithFormat:@"%d",targetValue];
    self.scoreLabel.text = [NSString stringWithFormat:@"%d",score];
    self.roundLabel.text = [NSString stringWithFormat:@"%d",round];
}

- (void)startNewRount{
    targetValue = 1 + (arc4random()%100);
    currentValue = 50;
    self.slider.value = currentValue;
    round++;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self startNewRount];
    [self updateLabels];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)showAlert:(id)sender {
    int difference = abs(currentValue - targetValue);
    int points = 100 - difference;
    score += points;
    
    NSString *title;
    
    if(difference == 0){
        title = @"土豪你太NB了！";
        points += 100;
    }else if(difference < 5){
        title = @"土豪太棒了，差一点！";
        points += 50;
    }else if(difference < 10){
        title = @"好吧，勉强算个土豪";
    }else{
        title = @"不是土豪少来装！";
    }
    
    NSString *message = [NSString stringWithFormat:@"恭喜高富帅，您的得分是%d",points];
    [[[UIAlertView alloc]initWithTitle:title message:message delegate:self cancelButtonTitle:@"朕已知晓，爱卿辛苦了" otherButtonTitles:nil, nil]show];
}
- (IBAction)sliderMove:(UISlider*)sender {
    currentValue = (int)lround(sender.value);
//    self.label.text = [NSString stringWithFormat:@"%d",currentValue];
//    NSLog(@"%f",self.slider.value);
}

- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    [self startNewRount];
    [self updateLabels];
}

@end
