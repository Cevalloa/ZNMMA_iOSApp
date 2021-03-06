//
//  ClassesTableViewController.m
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 6/2/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import "ClassesTableViewController.h"
#import "ClassesTableViewCell.h"
#import <QuartzCore/QuartzCore.h>
#import "ClassInstructorDViewController.h"

@interface ClassesTableViewController ()

@end

@implementation ClassesTableViewController

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
    return 5;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ClassesTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"classesCell" forIndexPath:indexPath];
    
    UIImage *boxingImage = [UIImage imageNamed:@"boxing2.jpg"];
    UIImage *muayThaiImage = [UIImage imageNamed:@"Muay-Thai1.jpg"];
    UIImage *mmaImage = [UIImage imageNamed:@"grappling1.jpg"];
    UIImage *judoImage = [UIImage imageNamed:@"judo1.jpg"];
    UIImage *privateImage = [UIImage imageNamed:@"privateTraining1.jpg"];

    
    switch (indexPath.row) {
        case 0:
            cell.backgroundView = [[UIImageView alloc] initWithImage:boxingImage];
            cell.leftTitle.text = @"BOXING";
            break;
        case 1:
            cell.backgroundView = [[UIImageView alloc] initWithImage:muayThaiImage];
            cell.rightTitle.text = @"MUAY THAI";
            break;
        case 2:
            cell.backgroundView = [[UIImageView alloc] initWithImage:mmaImage];
            cell.leftTitle.text = @"MMA";
            break;
        case 3:
            cell.backgroundView = [[UIImageView alloc] initWithImage:judoImage];
            cell.rightTitle.text = @"JUDO";
            break;
        case 4:
            cell.leftTitle.text = @"PRIVATE\nTRAINING";
            cell.backgroundView = [[UIImageView alloc] initWithImage:privateImage];

        default:
            break;
    }
    
    cell.selectionStyle = UITableViewCellSelectionStyleNone;

    
    // Configure the cell...
    
    return cell;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
    switch(indexPath.row){
        case 0:
            self.goingIn = @"boxing";
            break;
        case 1:
            self.goingIn = @"muay";
            break;
        case 2:
            self.goingIn = @"mma";
            break;
        case 3:
            self.goingIn = @"judo";
            break;
        case 4:
            self.goingIn = @"private";
            break;
        default:
            break;
            
    }
    
    
    [self performSegueWithIdentifier:@"classDetail" sender:self];
}


-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"classDetail"]){
        ClassInstructorDViewController *cidvc = (ClassInstructorDViewController *)segue.destinationViewController;
        cidvc.thisIsIt = self.goingIn;
    }
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
