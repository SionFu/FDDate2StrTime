//
//  ViewController.m
//  FDDate2StrTime
//
//  Created by Fu_sion on 10/28/16.
//  Copyright © 2016 Fu_sion. All rights reserved.
//

#import "ViewController.h"
#import "NSDate+FDDate2StrTime.h"
@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *strTimeLabel;
/**
 *  输入时间框
 */
@property (weak, nonatomic) IBOutlet UITextField *inputDateField;
/**
 *  输入时间戳框
 */
@property (weak, nonatomic) IBOutlet UITextField *inputDatestampField;
@property (weak, nonatomic) IBOutlet UILabel *strTimeStampLabel;

- (IBAction)getStrTimeBtn:(UIButton *)sender;

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

- (IBAction)getStrTimeBtn:(UIButton *)sender {
    NSDateFormatter *formatter = [NSDateFormatter new];
    [formatter setDateFormat:@"YYYY年M月dd日HH时"];
    NSDate *date = [formatter dateFromString:self.inputDateField.text];
    self.strTimeLabel.text = [NSDate getStrNumberOfTimeWithDate:date];
    
    self.strTimeStampLabel.text = [NSDate getStrNumberOfTimeWithTimestamp:[self.inputDatestampField.text intValue]];
}
@end
