//
//  ScheduleTableViewController.m
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 6/2/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import "ScheduleTableViewController.h"
#import "ScheduleTableViewCell.h"

@interface ScheduleTableViewController ()

@end

@implementation ScheduleTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)loadView {
    [super loadView];
    self.dayOfWeek = [NSMutableArray arrayWithCapacity:7];
    self.dayOfYear = [NSMutableArray arrayWithCapacity:7];
    [self refreshTheTable];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    [self refreshTheTable];
    
}

-(void)refreshTheTable {
    NSDate *date = [NSDate date];
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
    [dateFormatter setDateFormat:@"EEEE"];
    
    NSDateFormatter *dateMonthFormatter = [[NSDateFormatter alloc] init];
    [dateMonthFormatter setDateFormat:@"M/d"];
    
    for (int i=0; i<=6; i++) {
        NSDate *theDay = [date dateByAddingTimeInterval:60*60*24*i];
        NSString *formattedDateString = [dateFormatter stringFromDate:theDay];
        NSString *formattedDateMonthString = [dateMonthFormatter stringFromDate:theDay];
        
        [self.dayOfWeek addObject:formattedDateString];
        [self.dayOfYear addObject:formattedDateMonthString];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 7;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ScheduleTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ScheduleCell" forIndexPath:indexPath];
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;
    cell.backgroundColor = [UIColor colorWithRed:186/255.0 green:3/255.0 blue:0/255.0 alpha:1];
    NSString *sentIn = [self.dayOfWeek objectAtIndex:indexPath.row];

    switch (indexPath.row) {
        case 0:
            cell.backgroundColor = [UIColor colorWithRed:24/255.0 green:24/255.0 blue:26/255.0 alpha:1];
            cell.firstLeft.attributedText = [self makeTheAttribute:@"Today"];
            cell.secondLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfYear objectAtIndex:0]]];
            cell.firstRight.attributedText = [self makeTheRightAttribute:[self setEvents:[NSString stringWithFormat:@"%@", sentIn]]];
            break;
        case 1:
            cell.firstLeft.attributedText = [self makeTheAttribute:@"Tomorrow"];
            cell.secondLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfYear objectAtIndex:1]]];
            cell.firstRight.attributedText = [self makeTheRightAttribute:[self setEvents:[NSString stringWithFormat:@"%@", sentIn]]];
            break;
        case 2:
            cell.firstLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@", sentIn]];
            cell.secondLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfYear objectAtIndex:2]]];
            cell.firstRight.attributedText = [self makeTheRightAttribute:[self setEvents:[NSString stringWithFormat:@"%@", sentIn]]];
            cell.backgroundColor = [UIColor colorWithRed:24/255.0 green:24/255.0 blue:26/255.0 alpha:1];
            break;
        case 3:
            cell.firstLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfWeek objectAtIndex:3]]];
            cell.secondLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfYear objectAtIndex:3]]];
            cell.firstRight.attributedText = [self makeTheRightAttribute:[self setEvents:[NSString stringWithFormat:@"%@", sentIn]]];
            break;
        case 4:
            cell.firstLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfWeek objectAtIndex:4]]];
            cell.secondLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfYear objectAtIndex:4]]];
            cell.firstRight.attributedText = [self makeTheRightAttribute:[self setEvents:[NSString stringWithFormat:@"%@", sentIn]]];
            cell.backgroundColor = [UIColor colorWithRed:24/255.0 green:24/255.0 blue:26/255.0 alpha:1];
            break;
        case 5:
            cell.firstLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfWeek objectAtIndex:5]]];
            cell.secondLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfYear objectAtIndex:5]]];
            cell.firstRight.attributedText = [self makeTheRightAttribute:[self setEvents:[NSString stringWithFormat:@"%@", sentIn]]];
            break;
        case 6:
            cell.firstLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfWeek objectAtIndex:6]]];
            cell.secondLeft.attributedText = [self makeTheAttribute:[NSString stringWithFormat:@"%@",[self.dayOfYear objectAtIndex:6]]];
            cell.firstRight.attributedText = [self makeTheRightAttribute:[self setEvents:[NSString stringWithFormat:@"%@", sentIn]]];
            cell.backgroundColor = [UIColor colorWithRed:24/255.0 green:24/255.0 blue:26/255.0 alpha:1];
            break;
        default:
            
            break;
    }
    // Configure the cell...
    return cell;
}

-(NSString *)setEvents:(NSString *)pulledIn {
    if ([pulledIn isEqualToString:@"Monday"]) {
        return @"Grappling/MMA - 11:00AM-12:30PM\nMuay Thai - 7:00PM-8:00PM\nWKA Kickboxing - 7:00PM-8:00PM\nGrappling/MMA - 7:00PM-8:00PM";
    }else if ([pulledIn isEqualToString:@"Tuesday"]) {
        return  @"Boxing - 6:00PM-7:00PM\nBoxing (Beginners) - 5:00PM-6:00PM\nMuay Thai - 6:00PM-7:00PM\n Grappling/MMA - 7:00PM-8:00PM\nJudo - 8:00PM-9:00PM";
    }else if ([pulledIn isEqualToString:@"Wednesday"]){
        return  @"Grappling/MMA - 7:00PM-8:00PM\nWKA KickBoxing - 6:00PM-7:00PM\nBoxing - 7:00PM-8:00PM\nMuay Thai - 6:00PM-7:00PM";
    }else if ([pulledIn isEqualToString:@"Thursday"]){
        return @"Boxing (Beginners) - 5:00PM-6:00PM\nBoxing - 6:00PM-7:00PM\nGrappling/MMA - 7:00PM-8:00PM\nJudo - 8:00PM-9:00PM";
    }else if ([pulledIn isEqualToString:@"Friday"]){
        return @"Grappling/MMA - 11:00AM-12:30PM\nBoxing - 6:00PM-7:00PM\nMuay Thai - 6:00PM-7:00PM";
    }else if ([pulledIn isEqualToString:@"Saturday"]){
        return @"Open Mat- 11:00AM-1:00PM";
    }else if([pulledIn isEqualToString:@"Sunday"]){
        return @"Closed";
    }
    
    
    return @"Closed";
}


-(NSAttributedString *)makeTheAttribute:(NSString *)pulledIn{
    
    UIFont* myFont = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:18.0f];
    NSDictionary* style = @{
                            NSFontAttributeName: myFont
                            };
    
    NSAttributedString* myString = [[NSAttributedString alloc] initWithString:pulledIn
                                                                   attributes:style];
    return myString;
}

-(NSAttributedString *)makeTheRightAttribute:(NSString *)pulledIn {
    UIFont* myFont = [UIFont fontWithName:@"AppleSDGothicNeo-Bold" size:12.0f];
    NSDictionary* style = @{
                            NSFontAttributeName: myFont
                            };
    
    NSAttributedString* myString = [[NSAttributedString alloc] initWithString:pulledIn
                                                                   attributes:style];
    return myString;
}


/*
 
 Unlimited attendance for all of the classes above
 
 Thursday ->
 Grappling/MMA Schedule:
 Mon, Tue, Thu:7:00PM-8:00PM
 
 Friday ->
 Boxing Schedule (all levels – mat#1, ring):
 Tue, Thu, Fri: 6:00PM-7:00PM
 
 Muay Thai Schedule:
 Mon, Tue, Wed, Fri:6:00PM-7:00PM
 
 Grappling/MMA Schedule:
 Fri:11:00AM-12:30PM
 
 Saturday ->
 Sat: (Open Mat)11:00AM-1:00PM
 (Boxing All levels)
 (Muay Thai)
 (Grappling MMA)
 
 Sunday ->
 Closed
 
 
 Monday ->
 WKA Competitive Boxing (fighters only – ring, mat#2):
 Mon :6:00PM-7:00PM
 
 Boxing Schedule (all levels – mat#1, ring):
 Mon : 7:00PM-8:00PM
 
 Muay Thai Schedule:
 Mon, Tue, Wed, Fri:6:00PM-7:00PM
 
 Grappling/MMA Schedule:
 Mon, Tue, Thu:7:00PM-8:00PM
 
 Tuesday ->
 Boxing Schedule (all levels – mat#1, ring):
 Tue, Thu, Fri: 6:00PM-7:00PM
 
 Boxing Schedule (kids and beginners – mat#1):
 Tue, Thu:5:00PM-6:00PM
 
 Muay Thai Schedule:
 Mon, Tue, Wed, Fri:6:00PM-7:00PM
 
 Grappling/MMA Schedule:
 Mon, Tue, Thu:7:00PM-8:00PM
 
 WKA Competitive Boxing Schedule (fighters only – ring, mat#2):
 Mon, Wed:6:00PM-7:00PM
 
 Boxing Schedule (all levels – mat#1, ring):
 Mon, Wed: 7:00PM-8:00PM
 Tue, Thu, Fri: 6:00PM-7:00PM
 Sat: (Open Mat)11:00AM-1:00PM
 
 Boxing Schedule (kids and beginners – mat#1):
 Tue, Thu:5:00PM-6:00PM
 
 Muay Thai Schedule:
 Mon, Tue, Wed, Fri:6:00PM-7:00PM
 Sat: (Open Mat)11:00AM-1:00PM
 
 Grappling/MMA Schedule:
 Mon, Tue, Thu:7:00PM-8:00PM
 Fri:11:00AM-12:30PM
 Sat (Open Mat): 11:00AM-1:00PM
 
 
 
 
 Wednesday ->
 WKA Competitive Boxing Schedule (fighters only – ring, mat#2):
 Mon, Wed:6:00PM-7:00PM
 
 Boxing Schedule (all levels – mat#1, ring):
 Mon, Wed: 7:00PM-8:00PM
 
 Muay Thai Schedule:
 Mon, Tue, Wed, Fri:6:00PM-7:00PM
 
 
 */


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
