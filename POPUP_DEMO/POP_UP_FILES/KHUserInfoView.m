//
//  KHUserInfoView.m
//  cloveapp
//
//  Created by Ankit Bharti on 23/12/16.
//  Copyright © 2016 KaHa. All rights reserved.
//

#import "KHUserInfoView.h"
#define Colour(rgb) [UIColor colorWithRed:(((rgb)&0xFF0000)>>16)/255.0 green:(((rgb)&0xFF00)>>8)/255.0 blue:((rgb)&0xFF)/255.0 alpha:1.0]

@interface KHUserInfoView ()


@end

@implementation KHUserInfoView

-(instancetype)initWithCoder:(NSCoder *)aDecoder {
    if (self=[super initWithCoder:aDecoder]) {
        [self load];
    }
    return self;
}

-(instancetype)initWithFrame:(CGRect)frame {
    if (self=[super initWithFrame:frame]) {
        [self load];
    }
    return self;
}

-(void)load {
    UIView *view=[[[NSBundle bundleForClass:[self class]] loadNibNamed:@"KHUserInfoView" owner:self options:nil] firstObject];
    [self addSubview:view];
    view.frame=self.bounds;
    self.rejectButton.backgroundColor=Colour(0xe74c3c);
    self.acceptButton.backgroundColor=Colour(0x2ecc71);
    [self setAcceptButtonCornerRadius:20];
    [self setRejectButtonConerRadius:20];
    [self setImageCornerRadius:50.0];
    [self setViewCornerRadius:10];
    self.clipsToBounds=YES;
}

-(void)setViewCornerRadius:(NSInteger)viewCornerRadius {
    self.layer.cornerRadius=viewCornerRadius;
}

-(void)setImageCornerRadius:(NSInteger)imageCornerRadius {
    self.imageView.layer.cornerRadius=imageCornerRadius;
    self.imageView.clipsToBounds=YES;
}

-(void)setUserNameBorderWidth:(NSInteger)nameLabelBorderWidth {
    self.nameLabel.layer.borderWidth=nameLabelBorderWidth;
}
-(void)setUserNameBorderColor:(UIColor *)nameLabelBorderColor {
    self.nameLabel.layer.borderColor=[nameLabelBorderColor CGColor];
}

-(void)setUserMobileBorderWidth:(NSInteger)mobileLabelBorderWidth {
    self.mobileLabel.layer.borderWidth=mobileLabelBorderWidth;

}
-(void)setUserMobileBorderColor:(UIColor *)mobileLabelBorderColor {
    self.mobileLabel.layer.borderColor=[mobileLabelBorderColor CGColor];

}

-(void)setAcceptButtonCornerRadius:(NSInteger)acceptButtonCornerRadius {
    self.acceptButton.layer.cornerRadius=acceptButtonCornerRadius;
    self.acceptButton.clipsToBounds=YES;
}
-(void)setRejectButtonConerRadius:(NSInteger)rejectButtonConerRadius {
    self.rejectButton.layer.cornerRadius=rejectButtonConerRadius;
    self.rejectButton.clipsToBounds=YES;
}

-(void)setAcceptButtonBackgroundColor:(UIColor *)acceptButtonBackgroundColor {
    self.acceptButton.backgroundColor=acceptButtonBackgroundColor;
}

-(void)setRejectButtonBackgroundColor:(UIColor *)rejectButtonBackgroundColor {
    self.rejectButton.backgroundColor=rejectButtonBackgroundColor;
}

-(void)setImage:(UIImage *)image {
    self.imageView.image=image;
}

-(void)setNameLabelText:(NSString *)nameLabelText {
    self.nameLabel.text=nameLabelText;
}

-(void)setMobileLabelText:(NSString *)mobileLabelText {
    self.mobileLabel.text=mobileLabelText;
}

-(void)setAcceptButtonTitle:(NSString *)acceptButtonTitle {
    [self.acceptButton setTitle:acceptButtonTitle forState:UIControlStateNormal];
}

-(void)setRejectButtonTitle:(NSString *)rejectButtonTitle {
    [self.rejectButton setTitle:rejectButtonTitle forState:UIControlStateNormal];}

-(void)setImageByUrl:(NSURL *)url {
    [self.imageView sd_setImageWithURL:url placeholderImage:[UIImage imageNamed:@""] options:SDWebImageRefreshCached];
}

@end
