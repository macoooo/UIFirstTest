//
//  FirstTableViewCell.m
//  考核
//
//  Created by 强淑婷 on 2018/8/6.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "FirstTableViewCell.h"

@implementation FirstTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.label = [[UILabel alloc] init];
        [self.contentView addSubview:_label];
        
        self.pictureImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_pictureImageView];
        self.headImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_headImageView];
        
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    _label.frame = CGRectMake(250, 200, 80, 50);
    _label.textAlignment = NSTextAlignmentCenter;
    _label.textColor = [UIColor blackColor];
    
    _headImageView.frame = CGRectMake(330, 150, 90, 90);
    
    _pictureImageView.frame = CGRectMake(20, 0, 380, 200);
    
}
- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
