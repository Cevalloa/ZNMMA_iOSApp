//
//  ContactViewController.h
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 6/3/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>

@interface ContactViewController : UIViewController 
{
    CLLocationCoordinate2D coordinate;
}
@property (weak, nonatomic) IBOutlet MKMapView *mapView;
@end
