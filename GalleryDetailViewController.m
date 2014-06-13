//
//  GalleryDetailViewController.m
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 3/3/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import "GalleryDetailViewController.h"
#import <QuartzCore/QuartzCore.h>

@interface GalleryDetailViewController ()

@end

@implementation GalleryDetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    NSString *newAddress = [@"1" stringByAppendingString:self.thisJustIn];
    
    UIImage *detailAddress = [UIImage imageNamed:newAddress];
    
    self.detailPicture.image = detailAddress;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}




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
