//
//  UITextView+JKExtension.h
//  JKOCProjectToolDemo
//
//  Created by 王冲 on 2018/12/12.
//  Copyright © 2018年 JK科技有限公司. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <objc/runtime.h>
NS_ASSUME_NONNULL_BEGIN

@interface UITextView (JKExtension)<UITextViewDelegate>

/**  可限制输入的字符个数 依赖于：JKLimitInput
 
 [UITextField的对象 setValue:@10 forKey:@"limit"];
 
 */

@property (nonatomic, strong) UITextView *jk_placeHolderTextView;
- (void)jk_addPlaceHolder:(NSString *)placeHolder;

@end

NS_ASSUME_NONNULL_END
