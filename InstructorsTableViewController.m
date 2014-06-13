//
//  InstructorsTableViewController.m
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 3/1/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import "InstructorsTableViewController.h"
#import "InstructorsTableViewCell.h"
#import "ClassInstructorDViewController.h"

@interface InstructorsTableViewController ()

@end

@implementation InstructorsTableViewController

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
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
    return 4;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   // UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Instructors" forIndexPath:indexPath];
    InstructorsTableViewCell * iCell = [tableView dequeueReusableCellWithIdentifier:@"Instructors" forIndexPath:indexPath];
    
    // Configure the cell...
    
    iCell.selectionStyle = UITableViewCellSelectionStyleNone;
    
    UIImage *olegImage = [UIImage imageNamed:@"Oleg1.jpg"];
    UIImage *jarekImage = [UIImage imageNamed:@"Jarek2.jpg"];
    UIImage *borisImage = [UIImage imageNamed:@"boris3.jpg"];
    UIImage *alexImage = [UIImage imageNamed:@"alex4.jpg"];
    
    switch (indexPath.row) {
        case 0:
            iCell.backgroundView = [[UIImageView alloc] initWithImage:olegImage];
            
            iCell.shortBio.text = @"OLEG SAVITSKY";
            break;
        case 1:
            iCell.backgroundView = [[UIImageView alloc] initWithImage:jarekImage];
            iCell.shortBioLeft.text = @"JAREK \nSLAGOWSKI";
            break;
        case 2:
            iCell.backgroundView = [[UIImageView alloc] initWithImage:borisImage];
            iCell.shortBio.text = @"BORIS BYZHAK";
            break;

        case 3:
            iCell.backgroundView = [[UIImageView alloc] initWithImage:alexImage];
            iCell.shortBioBottomLeft.text = @"ALEX \nMNATSAKANOV";
            break;

        default:
            break;
    }
    return iCell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch(indexPath.row){
        case 0:
            self.whatIsIt = @"oleg";
            break;
        case 1:
            self.whatIsIt = @"jarek";
            break;
        case 2:
            self.whatIsIt = @"boris";
            break;
        case 3:
            self.whatIsIt = @"alex";
            break;
        default:
            break;
    }
    
    [self performSegueWithIdentifier:@"instructorsDetail" sender:self];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    if ([segue.identifier isEqualToString:@"instructorsDetail"]){
        ClassInstructorDViewController *cidvc = (ClassInstructorDViewController *)segue.destinationViewController;
        cidvc.thisIsIt = self.whatIsIt;
    }
}

-(NSMutableAttributedString *)makeTheAttribute:(NSString *)pulledIn{
    
    
    NSMutableAttributedString *attString=[[NSMutableAttributedString alloc] initWithString:pulledIn];
    NSInteger _stringLength=[pulledIn length];
    
    
    UIColor *_red=[UIColor whiteColor];
    UIFont *font=[UIFont fontWithName:@"Avenir-Heavy" size:18.0f];
    [attString addAttribute:NSFontAttributeName value:font range:NSMakeRange(0, _stringLength)];
    [attString addAttribute:NSStrokeColorAttributeName value:_red range:NSMakeRange(0, _stringLength)];
    [attString addAttribute:NSStrokeWidthAttributeName value:[NSNumber numberWithFloat:-4.0] range:NSMakeRange(0, _stringLength)];
    
    return attString;
    
}


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
