//
//  JXFlowLayoutFromTopLeftHorizontally.m
//  Pods
//
//  Created by JIRENTIANXIANG on 4/2/16.
//
//

#import "JXFlowLayoutFromTopLeftHorizontally.h"

@implementation JXFlowLayoutFromTopLeftHorizontally

-(instancetype)initWithFrame:(CGRect)frame configuration:(JXFlowLayoutConfiguration *)configuration
{
    if (self=[super initWithFrame:frame configuration:configuration]) {
        self.size=CGSizeMake(frame.size.width, 0);
        CGPoint origin=self.bounds.origin;
        self.nextItemPosition=CGPointMake(origin.x+self.configuration.paddingRight, origin.y+self.configuration.paddingTop);
        self.nextLinePosition=self.nextItemPosition;
        self.availableSpace=0;
    }
    return self;
}

-(CGFloat)appendItem:(UIView *)item
{
    CGRect frame=item.frame;
    if (frame.size.width>self.bounds.size.width) {
        return self.size.height;
    }
    if (frame.size.width>self.availableSpace) {
        self.nextItemPosition=self.nextLinePosition;
        self.availableSpace=self.bounds.size.width-self.configuration.paddingLeft-self.configuration.paddingRight;
        self.nextLinePosition=CGPointMake(self.nextLinePosition.x, self.nextLinePosition.y+frame.size.height+self.configuration.lineGap);
        self.maxItemWidthInCurrentLine=frame.size.height;
    }else{
        if (frame.size.height>self.maxItemWidthInCurrentLine) {
            self.nextLinePosition=CGPointMake(self.nextLinePosition.x, self.nextLinePosition.y-self.maxItemWidthInCurrentLine+frame.size.height);
            self.maxItemWidthInCurrentLine=frame.size.height;
        }
    }
    
    frame.origin=self.nextItemPosition;
    item.frame=frame;
    [self addSubview:item];
    
    self.availableSpace-=frame.size.width+self.configuration.itemGap;
    if (self.availableSpace<0) {
        self.nextItemPosition=self.nextLinePosition;
    }else{
        self.nextItemPosition=CGPointMake(self.nextItemPosition.x+frame.size.width+self.configuration.itemGap, self.nextItemPosition.y);
    }
    
    self.size=CGSizeMake(self.size.width, self.nextLinePosition.y-self.configuration.lineGap+self.configuration.paddingBottom-self.bounds.origin.y);
    return self.size.height;
}

@end