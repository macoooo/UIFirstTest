//
//  SecondTableViewCell.m
//  考核
//
//  Created by 强淑婷 on 2018/8/6.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "SecondTableViewCell.h"

@implementation SecondTableViewCell
- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if(self){
        self.headImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_headImageView];
        
        self.headLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_headLabel];
        
        self.firstLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_firstLabel];
        
        self.middleImageView = [[UIImageView alloc] init];
        [self.contentView addSubview:_middleImageView];
        
        self.secondLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_secondLabel];
        
        self.thirdLabel = [[UILabel alloc] init];
        [self.contentView addSubview:_thirdLabel];
        
        self.loveBtn = [[UIButton alloc] init];
        [self.contentView addSubview:_loveBtn];
    }
    return self;
}
- (void)layoutSubviews{
    [super layoutSubviews];
    _headImageView.frame = CGRectMake(10, 10, 60, 60);
    _headLabel.frame = CGRectMake(80, 20, 100, 30);
    
    _firstLabel.frame = CGRectMake(80, 50, 200, 30);
    _firstLabel.numberOfLines = 2;
    
    _middleImageView.frame = CGRectMake(80, 90, 290, 200);
    
    _secondLabel.frame = CGRectMake(80, 300, 200, 30);
    
    _thirdLabel.frame = CGRectMake(80, 330, 50, 30);
    
    _loveBtn.frame = CGRectMake(80, 360, 200, 40);
    _loveBtn.backgroundColor = [UIColor lightGrayColor];
    _loveBtn.layer.borderWidth = 1;
    _loveBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    _loveBtn.layer.cornerRadius = 2;
    _loveBtn.layer.masksToBounds = YES;

    
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
