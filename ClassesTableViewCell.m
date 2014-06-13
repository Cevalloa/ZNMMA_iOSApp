//
//  ClassesTableViewCell.m
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 6/2/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import "ClassesTableViewCell.h"

@implementation ClassesTableViewCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
