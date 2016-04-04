//
//  JXFlowLayout.h
//  Pods
//
//  Created by JIRENTIANXIANG on 4/2/16.
//
//

#import <UIKit/UIKit.h>
#import "JXFlowLayoutConfiguration.h"

NS_ASSUME_NONNULL_BEGIN

@interface JXFlowLayout : UIView

@property (nonatomic,strong) JXFlowLayoutConfiguration* configuration;

@property (nonatomic,assign) CGPoint nextItemPosition;
@property (nonatomic,assign) CGPoint nextLinePosition;
@property (nonatomic,assign) CGFloat maxItemWidthInCurrentLine;
@property (nonatomic,assign) CGFloat availableSpace;

+(JXFlowLayout*)flowLayoutWithFrame:(CGRect)frame configuration:(JXFlowLayoutConfiguration*)configuration;

-(instancetype)initWithFrame:(CGRect)frame configuration:(JXFlowLayoutConfiguration*)configuration;

-(CGFloat)appendItem:(UIView*)item;

@end

NS_ASSUME_NONNULL_END