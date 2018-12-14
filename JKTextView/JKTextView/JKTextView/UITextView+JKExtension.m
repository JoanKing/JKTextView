//
//  UITextView+JKExtension.m
//  JKOCProjectToolDemo
//
//  Created by 王冲 on 2018/12/12.
//  Copyright © 2018年 JK科技有限公司. All rights reserved.
//

#import "UITextView+JKExtension.h"

static const char *jk_phTextView = "jk_placeHolderTextView";
@implementation UITextView (JKExtension)

-(UITextView *)jk_placeHolderTextView{
    
    return objc_getAssociatedObject(self, jk_phTextView);
}

- (void)setJk_placeHolderTextView:(UITextView *)jk_placeHolderTextView{
    
    objc_setAssociatedObject(self, jk_phTextView, jk_placeHolderTextView, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (void)jk_addPlaceHolder:(NSString *)placeHolder {
    if (![self jk_placeHolderTextView]) {
        self.delegate = self;
        UITextView *textView = [[UITextView alloc] initWithFrame:self.bounds];
        textView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
        textView.font = self.font;
        textView.backgroundColor = [UIColor clearColor];
        textView.textColor = [UIColor grayColor];
        textView.userInteractionEnabled = NO;
        textView.text = placeHolder;
        [self addSubview:textView];
        [self setJk_placeHolderTextView:textView];
    }
}

# pragma mark - UITextViewDelegate

-(void)textViewDidChange:(UITextView *)textView{
    
    if([textView.text length] > 0)
    {
        self.jk_placeHolderTextView.hidden = YES;
    }else{
        self.jk_placeHolderTextView.hidden = NO;
    }
    
    
}

@end
