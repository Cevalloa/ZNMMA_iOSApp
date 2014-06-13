//
//  InstructorsDetailViewController.m
//  Zealous Nation MMA
//
//  Created by Alex Cevallos on 3/4/14.
//  Copyright (c) 2014 AlexCevallos. All rights reserved.
//

#import "ClassInstructorDViewController.h"

@interface ClassInstructorDViewController ()

@end

@implementation ClassInstructorDViewController

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
}

-(void)loadView{
    [super loadView];
    
    
    if ([self.thisIsIt isEqualToString:@"oleg"]){
    NSArray *olegStuff = @[@"Oleg",
                           @"Oleg1.jpg",
                           @"The owner and head coach of Zealous Nation MMA, Oleg is a top Sambo Leg Lock expert in the United States. \n\n As a former professional MMA and Combat Sambo fighter, throughout his career, Oleg has won numerous titles in world championships and has fought the top MMA athletes in the world, such as Fedor Emelianenko (Pride Champion), Tim Boetsch (UFC), Mikhail Zayats (Bellator) just to name a few. \n\nOleg continuiously demonstrates his top hands-on experitse in every discipline of the MMA – from Muah Thai and Boxing to Sambo and Brazillian Jiu Jitsu. \n\n As a true Marital Arts expert, Oleg was chosen as US National Combat Sambo Team coach in 2008 and is constantly being sought-after by professional and amateur MMA fighters as well as law enforcement agencies. "];
        [self loadItUp:olegStuff];
    }else if([self.thisIsIt isEqualToString:@"jarek"]){
    NSArray *jarekStuff = @[@"Jarek",
                            @"Jarek2.jpg",
                            @"Jarek Slagowski is a Top Certified USA Boxing Inc. Coach with over 35 years coaching experience both in Europe and the United States. Jarek has produced multiple state champions, Golden Gloves and Diamond Gloves champions and finalists. \n\nIn addition Jarek is training competitive boxers in the Masters Division of USA Boxing. This is a boxing competition designed for guys older than 40 years (Olympic Boxing age 19 to 40).  The US is the only country with this opportunity.\n\nAs a Zealous Nation head boxing coach, Jarek runs one of the best Olympic and Pro Boxing programs in the country."
                            ];
        [self loadItUp:jarekStuff];
    }else if ([self.thisIsIt isEqualToString:@"boris"]){
    NSArray *borisStuff = @[@"Boris",
                            @"boris3.jpg",
                            @"Top Judo Expert in the world!\n\nAn accomplished Judoka with decades of winning and training at world-level competitions.\n\nHis expertize combines years of perfecting Judo techniques at Kodokan Judo, Japan and as a member of the Soviet National Judo Team.\n\nIf you are looking for the true authenticity in Judo training, Boris, Zealous Nation’s head Judo coach is the best trainer and the mentor you can find."
                            ];
        [self loadItUp:borisStuff];
    }else if ([self.thisIsIt isEqualToString:@"alex"]){
    NSArray *alexStuff = @[@"Alex",
                           @"alex4.jpg",
                           @"Simpy the best when it comes to Muah Thai and Kick Boxing\nDo NOT miss this opportunity to train with the top expert!\n\n2005  NJ Full Contact Sabaki Challenge, 1st Place\n\n2006  World Full Contact Sabaki Challenge, Competitor\n\n2008  NY Combat of the Capital MUAY THAI 170 lb, 1st Place\n\n2009  World Full Contact Sabaki Challenge, 1st Place"
                           ];
        [self loadItUp:alexStuff];
    }else if ([self.thisIsIt isEqualToString:@"boxing"]){
    NSArray *boxingStuff = @[@"Boxing",
                             @"boxing2.jpg",
                             @"\"Rhythm is everything in boxing. Every move you make starts with your heart, and that’s in rhythm or you’re in trouble.\" - Sugar Ray Robinson\n\nZealous Nation, is a professional boxing club. Since our instructor has a great pedigree in amateur and professional fighting and coaching, there is a strong emphasis on teaching authentic boxing. MMA fighters will be also taught and trained in a hybrid of Muay-Thai, kickboxing, and Western boxing modified for the MMA game. Great instruction and awesome class for anybody who wants to learn the striking game and also have fun getting into shape."
                             ];
        [self loadItUp:boxingStuff];
    }else if ([self.thisIsIt isEqualToString:@"muay"]){
    NSArray *muayStuff = @[@"Muay Thai",
                           @"Muay-Thai1.jpg",
                           @"Translated into English as Thai Boxing, is the national sport of Thailand and is a martial art with origins in the ancient battlefield tactics of the Siamese (or Thai) army.\n\nMuay Thai is known as “King of the Ring” in kickboxing circles.  These fights feature punches, kicks, elbows, knees, standing grappling and head-butts to wear down and knock out their opponent.\n\nThai training methods develop devastating power, speed and superb cardio-vascular endurance as well as fighting spirit.  Muay Thai  training as also quite safe thanks to sophisticated pad training that evolved to keep fighters healthy between fights.\n\nMuay Thai has also proven very effective outside the ring and has been embraced enthusiastically by practitioners of a variety of self-defense, sporting, military and law enforcement activities."
                           ];
        [self loadItUp:muayStuff];
    }else if ([self.thisIsIt isEqualToString:@"mma"]){
    NSArray *mmaStuff = @[@"MMA",
                          @"grappling1.jpg",
                          @"\"The training is the hard part, the fight is the easy part\" - Renato Sobral\n\nThis class provides the necessary tools to improve your ability to grapple either in stand up or on the ground. There is a strong emphasis on no-Gi Judo, Sambo, wrestling throws and takedowns that will insure your superiority and dominance in a grappling or MMA match.\n\nDuring your study of ground work, you’ll learn escapes, submissions, leglocks, sweeps, and all the dangerous techniques that make Sambo and BJJ players so feared by others; it guarantees to take your game to the next level. Recommended to all, whether you are an experienced wrestler, professional MMA fighter, or just a beginner who wants to learn new skills.\n\nThis is a no GI class, but rush-guard shirt and shorts are required."
                          ];
        [self loadItUp:mmaStuff];
    }else if ([self.thisIsIt isEqualToString:@"judo"]){
    NSArray *judoStuff = @[
                           @"Judo",
                           @"judo1.jpg",
                           @"\"\'Ouch\' is not a Judo term\"\n-Neil Ohlenkamp\n\nThis class is taught and assisted by the best in the world in the sport of Judo and Sambo. You will learn the techniques in the way they were taught at Kodokan (Japan – the world headquarters of Judo) and also benefit in discovering the Russian school of Judo and Sambo that has produced numerous Olympic and World Champions. For this class, GI-kimono or Sambo Kurtka and shorts are required. Open to anybody who is interested in Judo or Sambo, and strongly recommended to anyone who wants to improve their MMA game."
                           ];
        [self loadItUp:judoStuff];
    }else if ([self.thisIsIt isEqualToString:@"private"]){
    NSArray *privateStuff = @[@"Training",
                              @"privateTraining1.jpg",
                              @"Private Training Sessions are designed for everyone – from the professional athlete to anyone who isn’t afraid to take a challenge of physically demanding training. This is a one-hour private session of non-stop physical tests that guarantees to improve your overall physical stamina and cardiovascular endurance. You’ll also lose extra pounds that hinder your ability to perform as an athlete or simply get you back into your favorite pair of jeans.\n\nWe will also custom-tailor private sessions to our client’s specific needs. We work with our clients to develop an exercise plan that will result in improved body composition, physical performance, heart condition and overall improved health and strength.\n\nOur highly qualified trainers pay close attention to their client’s exercise form, workout routine, and nutrition plan.\n\nWe also offer Hand-to-Hand, Submission Wrestling, or Boxing Private Training. These classes are great for anybody who wants to acquire skills for immediate resolution of any type of physical confrontation. It will provide you with physical and psychological skills to face, and if necessary, handle any type of aggressor. You will learn moves and strategies used by the elite Soviet special force units, as well as other combat systems utilized by the experts in hand-to-hand combat around the world. Sessions will cover all the aspects of various attack scenarios (physical altercation in the bar, mugging, date aggression, etc.) and techniques for their resolution. You will learn striking, joint manipulation, ground combat, weapon disarmament, fighting multiple attackers, etc. Strongly recommended to anyone – regardless of sex, age or experience level.\n\nAdditional specialized training includes weapons disarmament, conflict resolution and situational law enforcement strategies"
                              ];
        [self loadItUp:privateStuff];
    }
    
}

-(void)loadItUp:(NSArray *)thisIn {
//    NSDictionary *allTheDetails = @{@"oleg": olegStuff, @"jarek": jarekStuff, @"boris": borisStuff, @"alex" : alexStuff, @"boxing" : boxingStuff, @"muay" :muayStuff, @"judo" : judoStuff, @"private" :privateStuff};
    
    UIImage *headerImageBefore;
    
    NSLog(@"load view says %@", self.thisIsIt);
    
   // NSArray *holdsAll = [thisIn objectForKey:self.thisIsIt];
    
    self.title = [thisIn objectAtIndex:0];
    headerImageBefore = [UIImage imageNamed:[thisIn objectAtIndex:1]];
    self.headerImage.image = headerImageBefore;
    self.headerText.text = [thisIn objectAtIndex:2];
    self.headerText.textColor = [UIColor whiteColor];
    
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
