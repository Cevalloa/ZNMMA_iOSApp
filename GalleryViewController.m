//
//  GalleryViewController.h
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 3/3/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import "GalleryViewController.h"
#import "GalleryDetailViewController.h"

@interface GalleryViewController ()

@end

@implementation GalleryViewController

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
    galleryPhotos = [NSArray arrayWithObjects:@"fedorpunch.jpg", @"fedor.jpg", @"boxing.jpg", @"camera.jpg", @"dan.jpg", @"gina.jpg", @"grappling.jpg", @"grappling2.jpg", @"groupphoto.jpg",
                     @"kick.jpg", @"meanddan.jpg", @"nick.jpg", @"sambo.jpg", @"thumb.jpg", nil];


}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section{
    return galleryPhotos.count;
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath{
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    cell.layer.borderWidth = 2.0f;
    cell.layer.borderColor = [UIColor whiteColor].CGColor;
    
    UIImageView *recipeImageView = (UIImageView *)[cell viewWithTag:100];
    recipeImageView.image = [UIImage imageNamed:[galleryPhotos objectAtIndex:indexPath.row]];
    
    return cell;
    
}

-(void)collectionView:(UICollectionView *)collectionView didSelectItemAtIndexPath:(NSIndexPath *)indexPath {
   self.toPassIn = [galleryPhotos objectAtIndex:indexPath.row];
    
    [self performSegueWithIdentifier:@"galleryDetail" sender:self];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"galleryDetail"]){
        GalleryDetailViewController *gdvc = (GalleryDetailViewController *)segue.destinationViewController;
        gdvc.thisJustIn = self.toPassIn;
    }
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
