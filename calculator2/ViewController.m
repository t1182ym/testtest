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
    startInput = YES;
    currentValue = 0;
}

-(IBAction)numberBtn:(id)sender{
    
    UIButton *b = (UIButton*) sender;
    if(startInput){
        
        if(b.tag == 1)return;
        labelText.text = [NSString stringWithFormat:@"%d", b.tag];
        startInput = NO;
        
        NSLog(@"%@", b);
    }
    else{
        
        labelText.text = [NSString stringWithFormat:@"%@%d", labelText.text, b.tag];
    }
}

-(IBAction)clearbtn:(id)sender{
    
    currentValue = 0;
    labelText.text = @"0";
    startInput = YES;
}

-(IBAction)optionbtn:(id)sender{
    
    
    UIButton *b = (UIButton *) sender;
    operation = b.tag;
    currentValue = [labelText.text intValue];
    startInput = YES;
    
    if (operation == 11){
        currentValue += [labelText.text intValue];
    }else if (operation == 10){
        currentValue -= [labelText.text intValue];
    }else if (operation == 12){
        currentValue *= [labelText.text intValue];
    }else if (operation == 13){
        currentValue /= [labelText.text intValue];
    }
    

    
}

-(IBAction)equalbtn:(id)sender{
    
  
    if (operation == 11){
        currentValue += [labelText.text intValue];
    }else if (operation == 10){
        currentValue -= [labelText.text intValue];
    }else if (operation == 12){
        currentValue *= [labelText.text intValue];
    }else if (operation == 13){
        currentValue /= [labelText.text intValue];
    }
    
    labelText.text = [NSString stringWithFormat:@"%d",currentValue];
    startInput = YES;
        
    NSLog(@"%@", labelText.text);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
