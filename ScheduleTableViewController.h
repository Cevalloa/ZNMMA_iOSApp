//
//  ScheduleTableViewController.h
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 6/2/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScheduleTableViewController : UITableViewController

@property (nonatomic, strong) NSMutableArray * dayOfWeek;
@property (nonatomic, strong) NSMutableArray * dayOfYear;


-(void)refreshTheTable;
-(NSString *)setEvents:(NSString *)pulledIn;
-(NSAttributedString *)makeTheAttribute:(NSString *)pulledIn;
-(NSAttributedString *)makeTheRightAttribute:(NSString *)pulledIn;
@end
