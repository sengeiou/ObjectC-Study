//
//  ViewController.m
//  CrazyDrag
//
//  Created by YanTian Yu on 15/10/11.
//  Copyright © 2015年 ioslearning. All rights reserved.
//

#import "ViewController.h"
#import "AboutViewController.h"

@interface ViewController (){
    int currentValue;
    int targetValue;
    int score;
    int round;
}
- (IBAction)sliderMove:(UISlider*)sender;
- (IBAction)startOver:(id)sender;
- (IBAction)showAlert:(id)sender;
- (IBAction)showInfo:(id)sender;
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

- (void)startNewGame{
    score = 0;
    round = 0;
    [self startNewRount];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIImage *thumbImageNormal = [UIImage imageNamed:@"SliderThumb-Normal"];
    [self.slider setThumbImage:thumbImageNormal forState:UIControlStateNormal];
    
    
    UIImage *thumbImageHighlighted = [UIImage imageNamed:@"SliderThumb-Highlighted"];
    [self.slider setThumbImage:thumbImageHighlighted forState:UIControlStateHighlighted];
    
    UIImage *trackLeftImage = [[UIImage imageNamed:@"SliderTrackLeft"] stretchableImageWithLeftCapWidth:14 topCapHeight:0];
    [self.slider setMinimumTrackImage:trackLeftImage forState:UIControlStateNormal];
    
    UIImage *trackRightImage = [[UIImage imageNamed:@"SliderTrackRight"] stretchableImageWithLeftCapWidth:14 topCapHeight:0];
    [self.slider setMaximumTrackImage:trackRightImage forState:UIControlStateNormal];
    
    [self startNewGame];
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

- (IBAction)showInfo:(id)sender {
    AboutViewController *controller = [[AboutViewController alloc]initWithNibName:@"AboutViewController" bundle:nil];
    controller.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    [self presentViewController:controller animated:YES completion:nil];
}
- (IBAction)sliderMove:(UISlider*)sender {
    currentValue = (int)lround(sender.value);
//    self.label.text = [NSString stringWithFormat:@"%d",currentValue];
//    NSLog(@"%f",self.slider.value);
}

- (IBAction)startOver:(id)sender {
    CATransition *transition = [CATransition animation];
    transition.type = kCATransitionFade;
    transition.duration = 3;
    transition.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseInEaseOut];
    
    [self startNewGame];
    [self updateLabels];
    [self.view.layer addAnimation:transition forKey:nil];
}

- (void) alertView:(UIAlertView *)alertView didDismissWithButtonIndex:(NSInteger)buttonIndex{
    [self startNewRount];
    [self updateLabels];
}

@end
