//
//  ViewController.h
//  calculator2
//
//  Created by Yuta Makino on 2015/05/22.
//  Copyright (c) 2015年 Yuta Makino. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController{
    
    IBOutlet UILabel *LabelText;
    BOOL startInput;
    int currentValue;
    int operation;
    
}


-(IBAction)numberbtn:(id)sender;
-(IBAction)clearbtn:(id)sender;
-(IBAction)optionbtn:(id)sender;
-(IBAction)equalbtn:(id)sender;
    



@end

