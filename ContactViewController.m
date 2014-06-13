//
//  ContactViewController.m
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 6/3/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import "ContactViewController.h"

#define METERS_PER_MILE 1609.344

@interface ContactViewController ()

@end

@implementation ContactViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}



-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:YES];
    
    CLLocationCoordinate2D zoomLocation;
    zoomLocation.latitude = 40.5650733;
    zoomLocation.longitude = -74.5069037;
    
    MKCoordinateRegion viewRegion = MKCoordinateRegionMakeWithDistance(zoomLocation, 0.5 *METERS_PER_MILE, 0.5 * METERS_PER_MILE);
    
    
    [_mapView setRegion:viewRegion animated:YES];
    CLLocationCoordinate2D zealousLocation;
    zealousLocation.latitude = 40.564145;
    zealousLocation.longitude = -74.505967;

    MKPointAnnotation *newAnnotation = [[MKPointAnnotation alloc] init];
    newAnnotation.coordinate = zealousLocation;
    newAnnotation.title = @"Zealous Nation MMA";
    
    
    
    [_mapView addAnnotation:newAnnotation];
    [_mapView selectAnnotation:newAnnotation animated:YES];
    
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
