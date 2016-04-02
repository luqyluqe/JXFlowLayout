//
//  JXFlowLayoutConfiguration.m
//  Pods
//
//  Created by JIRENTIANXIANG on 4/2/16.
//
//

#import "JXFlowLayoutConfiguration.h"

@implementation JXFlowLayoutConfiguration

+(JXFlowLayoutConfiguration*)defaultConfiguration
{
    JXFlowLayoutConfiguration* config=[JXFlowLayoutConfiguration new];
    config.orientation=JXFlowLayoutOrientationFromTopLeftHorizontally;
    config.paddingLeft=20;
    config.paddingRight=20;
    config.paddingTop=20;
    config.paddingBottom=20;
    config.itemGap=8;
    config.lineGap=8;
    return config;
}

@end
