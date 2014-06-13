//
//  GalleryViewController.h
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 3/3/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface GalleryViewController : UICollectionViewController <UICollectionViewDelegate>

{

NSArray *galleryPhotos;
    
}

@property (nonatomic) NSString *toPassIn;

@end
