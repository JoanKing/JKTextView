//
//  ViewController.m
//  JKTextView
//
//  Created by 王冲 on 2018/12/14.
//  Copyright © 2018年 JK科技有限公司. All rights reserved.
//

#import "ViewController.h"
#import "JKLimitInput.h"
#import "UITextView+JKExtension.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.view.backgroundColor = [UIColor whiteColor];
    
    UITextView *textView = [[UITextView alloc]initWithFrame:CGRectMake(20, 100, [UIScreen mainScreen].bounds.size.width-40, 200)];
    textView.backgroundColor = [UIColor yellowColor];
    textView.textColor = [UIColor blackColor];
    textView.font = [UIFont systemFontOfSize:22.f];
    [textView jk_addPlaceHolder:@"提示语"];
    textView.jk_placeHolderTextView.textColor = [UIColor redColor];
    [self.view addSubview:textView];
    
}


@end
