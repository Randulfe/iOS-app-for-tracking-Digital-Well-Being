//
//  PropileViewController.h
//  Wake Up!
//
//  Created by Mateo Gomez-Randulfe Rodriguez [el15mggr] on 14/11/2016.
//  Copyright © 2016 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataSource.h"


@interface ProfileViewController : UIViewController
//creating data model class object in order to use its instances
@property (strong,nonatomic) DataSource *data;



//button for resetting all the parameters to 0
- (IBAction)ResetButton:(UIButton *)sender;

//Button for loading the details after subbmiting
- (IBAction)LoadDetails:(UIButton *)sender;

//Button for sharing with your social media or with your friends
- (IBAction)share:(UIButton *)sender;

//intances that saves the data saved the last time the app was opened (if they are ending by "I"
//intances that saves the total points for the parameters, the one loaded from the previous
//time the app was opened and also from the new points submitten when the app is running
//(if they are ending by "P";

//Waking up on time
@property NSInteger WP;
@property NSInteger WI;
//Being active
@property NSInteger WLI;
@property NSInteger WLP;
//Phone adiction
@property NSInteger SI;
@property NSInteger SP;
//Personal objectives
@property NSInteger AI;
@property NSInteger AP;
//Day counter
@property float DI;
@property float DP;
//Total points
@property float TP;
@property float TI;
//Average score
@property float ASI;
@property float ASP;
//Last score
@property NSInteger DSP;
@property NSInteger DSI;

//labels for displaying the scores
@property (weak, nonatomic) IBOutlet UILabel *WakingUpPLabel;
@property (weak, nonatomic) IBOutlet UILabel *WalkingPLabel;
@property (weak, nonatomic) IBOutlet UILabel *SocialMediaLabel;
@property (weak, nonatomic) IBOutlet UILabel *AchievementsPLabel;
@property (weak, nonatomic) IBOutlet UILabel *YesterdayScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *MotivationLabel;
@property (weak, nonatomic) IBOutlet UILabel *DayCounterLabel2;
@property (weak, nonatomic) IBOutlet UILabel *TotalScoreLabel;
@property (weak, nonatomic) IBOutlet UILabel *AverageScoreLabel;

@end
