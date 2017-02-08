#import <UIKit/UIKit.h>

@interface NCMaterialView : UIView
-(void)changeAlphas;
@end

// MARK: - Hook notifications below

%hook NCMaterialView

-(UIColor *)backgroundColor {
    return [UIColor clearColor];
}

-(void)setBackgroundColor:(UIColor *)arg1 {
    arg1 = [UIColor clearColor];
    %orig;
}

-(UIView *)colorInfusionView {
    UIView *view = %orig;
    [view setAlpha:0];
    return view;
}

-(void)setColorInfusionView:(UIView *)arg1 {
    [arg1 setAlpha:0];
    %orig;
}

%end
