//
//  InstructorsDetailViewController.h
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 3/4/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ClassInstructorDViewController : UIViewController {

}

@property (nonatomic, strong) NSString *thisIsIt;
@property (strong, nonatomic) IBOutlet UIImageView *headerImage;
@property (weak, nonatomic) IBOutlet UITextView *headerText;

@end
