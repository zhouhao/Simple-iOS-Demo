//
//  ViewController.m
//  View demo
//
//  Created by Hao Zhou on 4/4/16.
//  Copyright © 2016 Hao Zhou. All rights reserved.
//

#import "ConversionViewController.h"

@interface ConversionViewController ()

@property (nonatomic) IBOutlet UILabel *celsiusLabel;
@property (nonatomic) IBOutlet UITextField *fahrenheitField;

@property (nonatomic) double fahrenheitValue;
@property (nonatomic) double celsiusValue;

@end

@implementation ConversionViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    /**
    CGRect firstFrame = CGRectMake(160,240, 100,150);
    UIView *firstView = [[UIView alloc] initWithFrame:firstFrame];
    firstView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:firstView];

    CGRect secondFrame = CGRectMake(20,30,50,50);
    UIView *secondView = [[UIView alloc] initWithFrame:secondFrame];
    secondView.backgroundColor = [UIColor greenColor];
    [firstView addSubview:secondView];
     **/

    
}

-(void) setFahrenheitValue:(double)fahrenheitValue {
    _fahrenheitValue = fahrenheitValue;
    [self updateCelsiuaLabel];
}

-(void) setCelsiusValue:(double)celsiusValue {
    self.fahrenheitValue = celsiusValue *(9.0/5.0) + 32;
}

-(double) celsiusValue {
    return (self.fahrenheitValue - 32) *(5.9/9.0);
}

-(void) updateCelsiuaLabel{
    self.celsiusLabel.text = [self.numberFormatter stringFromNumber:@(self.celsiusValue)];

}

- (IBAction)fahrenheitFieldEditingChanged:(UITextField *)textField {
    NSNumber *num = [self.numberFormatter numberFromString:textField.text];
    if(num != nil){
        self.fahrenheitValue = num.doubleValue;
    } else {
        self.celsiusLabel.text = @"???";
    }
}

-(IBAction)dismissKeyboard:(id)sender {
    [self.fahrenheitField resignFirstResponder];
}

- (NSNumberFormatter *) numberFormatter{
    static NSNumberFormatter *formatter = nil;
    if(formatter == nil){
        formatter = [NSNumberFormatter new];
        formatter.numberStyle = NSNumberFormatterDecimalStyle;
        formatter.minimumFractionDigits = 0;
        formatter.maximumFractionDigits = 1;
    }
    return formatter;
}

@end
