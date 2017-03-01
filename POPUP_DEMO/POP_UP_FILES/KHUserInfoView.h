//
//  KHUserInfoView.h
//  cloveapp
//
//  Created by Ankit Bharti on 23/12/16.
//  Copyright © 2016 KaHa. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SDWebImage/UIImageView+WebCache.h>

IB_DESIGNABLE
@interface KHUserInfoView : UIView
@property(assign,nonatomic) IBInspectable NSInteger viewCornerRadius;
@property(assign,nonatomic) IBInspectable NSInteger imageCornerRadius;
@property(assign,nonatomic) IBInspectable NSInteger nameLabelBorderWidth;
@property(assign,nonatomic) IBInspectable UIColor *nameLabelBorderColor;
@property(assign,nonatomic) IBInspectable NSInteger mobileLabelBorderWidth;
@property(assign,nonatomic) IBInspectable UIColor *mobileLabelBorderColor;
@property(assign,nonatomic) IBInspectable NSInteger acceptButtonCornerRadius;
@property(assign,nonatomic) IBInspectable NSInteger rejectButtonConerRadius;
@property(weak,nonatomic) IBInspectable UIColor *acceptButtonBackgroundColor;
@property(weak,nonatomic) IBInspectable UIColor *rejectButtonBackgroundColor;
@property(weak,nonatomic) IBInspectable UIImage *image;
@property(weak,nonatomic) IBInspectable NSString *nameLabelText;
@property(weak,nonatomic) IBInspectable NSString *mobileLabelText;
@property(weak,nonatomic) IBInspectable NSString *acceptButtonTitle;
@property(weak,nonatomic) IBInspectable NSString *rejectButtonTitle;

@property (weak, nonatomic) IBOutlet UIImageView *imageView;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *mobileLabel;
@property (weak, nonatomic) IBOutlet UIButton *acceptButton;
@property (weak, nonatomic) IBOutlet UIButton *rejectButton;
-(void)setImageByUrl:(NSURL *)url;

@end
