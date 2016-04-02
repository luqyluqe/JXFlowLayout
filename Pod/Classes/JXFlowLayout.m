//
//  JXFlowLayout.m
//  Pods
//
//  Created by JIRENTIANXIANG on 4/2/16.
//
//

#import "JXFlowLayout.h"
#import "JXFlowLayoutFromTopLeftHorizontally.h"

@interface JXFlowLayout ()

@end

#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wincomplete-implementation"
@implementation JXFlowLayout
#pragma clang diagnostic pop

+(JXFlowLayout*)flowLayoutWithFrame:(CGRect)frame configuration:(JXFlowLayoutConfiguration *)configuration
{
    JXFlowLayout* flowLayout;
    switch (configuration.orientation) {
        case JXFlowLayoutOrientationFromTopLeftHorizontally:
            flowLayout=[[JXFlowLayoutFromTopLeftHorizontally alloc] initWithFrame:frame configuration:configuration];
            break;
        default:
            break;
    }
    return flowLayout;
}

-(instancetype)initWithFrame:(CGRect)frame configuration:(JXFlowLayoutConfiguration *)configuration
{
    if (self=[super initWithFrame:frame]) {
        self.configuration=configuration;
    }
    return self;
}

@end
