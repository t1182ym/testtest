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

@synthesize countButton;



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    startInput = YES;
    sum = 0;
    num = 0;
    isAnswered = NO;
    

}


-(IBAction)numberBtn:(id)sender{
    
        UIButton *b = (UIButton*) sender;
        if(startInput){
            NSLog(@"スタートインプットなう");
            
                if(countButton == 0){
        
                if(b.tag == 0) return;
                labelText.text = [NSString stringWithFormat:@"%d", b.tag];
                startInput = NO;
            
                }else{
                    
                    if( labelText.text == 0){
                        
                        if(b.tag == 0) return;
                        labelText.text = [NSString stringWithFormat:@"%d", b.tag];
                        startInput = NO;
                    }else{
                  
                
                    labelText.text = [NSString stringWithFormat:@"%d", b.tag];
                    startInput = NO;
            
                    }
                }
        }else{
            
            NSLog(@"スタートインプットのー");
            if( num == 0){
                
                if(b.tag == 0) return;
                labelText.text = [NSString stringWithFormat:@"%d", b.tag];
                startInput = NO;
                
                
            }else{
            
                    labelText.text = [NSString stringWithFormat:@"%@%d", labelText.text, b.tag];
                    startInput = NO;
            }
                }
            
    
    num = [labelText.text intValue];
    NSLog(@"押されたボタン:%d", num);
    
    isAnswered = NO;
    NSLog(@"計算まだされてないよ" , isAnswered == NO);
    
    
    labelText.adjustsFontSizeToFitWidth = YES;
    
    
    }


-(IBAction)clearbtn:(id)sender{
    
    sum = 0;
    num = 0;
    countButton = 0;
    labelText.text = @"0";
    startInput = YES;
    NSLog(@"カウント0", countButton = 0);
    
}

-(IBAction)optionbtn:(id)sender{
    
    
    UIButton *b = (UIButton *) sender;
    
    
    
        if(countButton == 0){
            
            operation = b.tag;
            sum = num;
            NSLog(@"sumは%d", sum);
            NSLog(@"どの演算子か%d", b.tag);
            isAnswered = YES;
            
            
        
        
        }else{
    
    
    
            if(isAnswered == NO){
        
                NSLog(@"計算実行");
                if (operation == 11){
                    sum = sum + num;
                    labelText.text = [NSString stringWithFormat:@"%d",sum];
                    NSLog(@"たした数字：%d", num);
                }else if (operation == 10){
                    NSLog(@"ひいた数字：%d", num);
                    sum = sum - num;
                    labelText.text = [NSString stringWithFormat:@"%d",sum];
                }else if (operation == 12){
                    NSLog(@"かけた数字:%d", num);
                    sum = sum * num;
                    labelText.text = [NSString stringWithFormat:@"%d",sum];
                }else if (operation == 13){
                    NSLog(@"わった数字：%d", num);
                    sum = sum / num;
                    labelText.text = [NSString stringWithFormat:@"%d",sum];
                }
        
                isAnswered = YES;
                operation = b.tag;
                NSLog(@"どの演算子か%d", b.tag);
        
        
            }else{
        
                UIButton *b = (UIButton *) sender;
                operation = b.tag;
                NSLog(@"どの演算子か%d", b.tag);
        
        
            }
    
        }
        self.countButton ++;
        NSLog(@"カウントボタン:%d", countButton);
        startInput = YES;
}

-(IBAction)equalbtn:(id)sender{
    
    NSLog(@"計算実行");
    if (operation == 11){
        sum = sum + num;
        labelText.text = [NSString stringWithFormat:@"%d",sum];
        NSLog(@"たした数字：%d", num);
    }else if (operation == 10){
        NSLog(@"ひいた数字：%d", num);
        sum = sum - num;
        labelText.text = [NSString stringWithFormat:@"%d",sum];
    }else if (operation == 12){
        NSLog(@"かけた数字:%d", num);
        sum = sum * num;
        labelText.text = [NSString stringWithFormat:@"%d",sum];
    }else if (operation == 13){
        NSLog(@"わった数字：%d", num);
        sum = sum / num;
        labelText.text = [NSString stringWithFormat:@"%d",sum];
    }
    
    labelText.text = [NSString stringWithFormat:@"%d",sum];
    startInput = YES;
    NSLog(@"合計は%@", labelText.text);
    isAnswered = YES;
    
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
