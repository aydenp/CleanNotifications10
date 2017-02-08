#import <UIKit/UIKit.h>

// MARK: - Hook notifications below

%hook NCMaterialView

-(UIColor *)backgroundColor {
    return [UIColor clearColor];
}

-(void)setBackgroundColor:(UIColor *)arg1 {
    %orig([UIColor clearColor]);
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
