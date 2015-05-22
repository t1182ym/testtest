//
//  ViewController.m
//  calculator2
//
//  Created by Yuta Makino on 2015/05/22.
//  Copyright (c) 2015年 Yuta Makino. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    startInput	 = YES;
    currentValue = 0;
}

-(IBAction)numberbtn:(id)sender{
    
    UIButton *b = (UIButton*) sender;
    if(startInput){
        
        if(b.tag == 0) return;
        LabelText.text = [NSString stringWithFormat:@"%d", b.tag];
        startInput = NO;
    }
    else{
        
        LabelText.text = [NSString stringWithFormat:@"%@%d", LabelText.text, b.tag];
    }
}

-(IBAction)clearbtn:(id)sender{
    
    currentValue = 0;
    LabelText.text = @"0";
    startInput = YES;
}

-(IBAction)optionbtn:(id)sender{
    
    
    UIButton *b = (UIButton *) sender;
    operation = b.tag;
    currentValue = [LabelText.text intValue];
    startInput = YES;
    
}

-(IBAction)equalbtn:(id)sender{
    
    if(operation == 11){
        currentValue += [LabelText.text intValue];
    }else if (operation == 10){
        currentValue -= [LabelText.text intValue];
    }else if (operation == 12){
        currentValue *= [LabelText.text intValue];
    }else if (operation == 13){
        currentValue /= [LabelText.text intValue];
    }
    
    LabelText.text = [NSString stringWithFormat:@"%d",currentValue];
    startInput = YES;
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
