//
//  ViewController.m
//  TipCalculator
//
//  Created by Michael Woo on 2/13/14.
//  Copyright (c) 2014 Michael Woo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *amountTextField;
@property (weak, nonatomic) IBOutlet UILabel *tipLabel;
@property (weak, nonatomic) IBOutlet UILabel *totalPriceLabel;
@property (weak, nonatomic) IBOutlet UISlider *tipAmountSlider;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)calculateTipButton:(id)sender {
    double percentTip = (double) self.tipAmountSlider.value / 100;
    double amount =  [self.amountTextField.text doubleValue];
    
    Calculate *calcTip = [[Calculate alloc] init];
    
    double totalAmount = [calcTip calculateTipWithAmount:amount andTip:percentTip];
    self.totalPriceLabel.text = [NSString stringWithFormat:@"%.2f", totalAmount];

}
- (IBAction)tipSlider:(id)sender {
    self.tipLabel.text = [NSString stringWithFormat:@"%d%%", (int) self.tipAmountSlider.value];
}

- (BOOL) textFieldShouldReturn:(UITextField *)textField{
    textField = self.amountTextField;
    [textField resignFirstResponder];
    return TRUE;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}

@end
