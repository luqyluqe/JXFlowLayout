//
//  JXFlowLayoutConfiguration.h
//  Pods
//
//  Created by JIRENTIANXIANG on 4/2/16.
//
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger,JXFlowLayoutOrientation){
    JXFlowLayoutOrientationFromTopLeftHorizontally,
    JXFlowLayoutOrientationFromTopRightHorizontally,
    JXFlowLayoutOrientationFromBottomLeftHorizontally,
    JXFlowLayoutOrientationFromBottomRightHorizontally,
    JXFlowLayoutOrientationFromTopLeftVertically,
    JXFlowLayoutOrientationFromTopRightVertically,
    JXFlowLayoutOrientationFromBottomLeftVertically,
    JXFlowLayoutOrientationFromBottomRightVertically
};

NS_ASSUME_NONNULL_BEGIN

@interface JXFlowLayoutConfiguration : NSObject

@property (nonatomic,assign) JXFlowLayoutOrientation orientation;
@property (nonatomic,assign) CGFloat paddingLeft;
@property (nonatomic,assign) CGFloat paddingRight;
@property (nonatomic,assign) CGFloat paddingTop;
@property (nonatomic,assign) CGFloat paddingBottom;
@property (nonatomic,assign) CGFloat itemGap;
@property (nonatomic,assign) CGFloat lineGap;

+(JXFlowLayoutConfiguration*)defaultConfiguration;

@end

NS_ASSUME_NONNULL_END