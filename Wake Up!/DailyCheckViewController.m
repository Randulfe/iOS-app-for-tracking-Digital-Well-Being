//
//  SecondViewController.m
//  Wake Up!
//
//  Created by Mateo Gomez-Randulfe Rodriguez [el15mggr] on 14/11/2016.
//  Copyright © 2016 University of Leeds. All rights reserved.
//

#import "DailyCheckViewController.h"

@interface DailyCheckViewController ()

@end

@implementation DailyCheckViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    //alloquing the data model class object in order to use its instances
   self.data=[[DataSource alloc]init];
    
    //Here I set the buttons for only allowing the user to start a new day subbmision once the application starts running
    self.NextDayButton.enabled=NO;
    self.YesWakeButton.enabled=NO;
    self.YesWakeButton.alpha=0.3;
    self.NoWakeButton.enabled=NO;
    self.NoWakeButton.alpha=0.3;
    self.YesWalkButton.enabled=NO;
    self.YesWalkButton.alpha=0.3;
    self.NoWalkButton.enabled=NO;
    self.NoWalkButton.alpha=0.3;
    self.PersonalYesButton.enabled=NO;
    self.PersonalYesButton.alpha=0.3;
    self.PersonalNoButton.enabled=NO;
    self.PersonalNoButton.alpha=0.3;
    self.PersonalAlmostButton.enabled=NO;
    self.PersonalAlmostButton.alpha=0.3;
    self.HoursSlider.enabled=NO;
    self.HoursSlider.alpha=0.3;
    
    
}

/* 
 In every valoration parameter button, once it is pressed it will not allow again to the
 user to submit another point pressing the opposite button in order to avoid chashes or fails
 Moreover they will be blocking the submission button(DONE) until the last parameter button
 will be pressed
 Moreover, they will add or substract the points to their instance total points that will be
 saved in order to be taken afterwards in the profile view. REFER TO COMMENTS IN HOME VIEW,
 PART1 AND PART2
 */
#pragma mark parameter buttons

- (IBAction)YesWakeButton:(UIButton *)sender {
    
    self.NoWakeButton.enabled=NO;
    self.NoWakeButton.alpha=0.3;
    self.YesWakeButton.enabled=NO;
    self.NextDayButton.enabled=NO;
    //enables next parameter to be evaluated
    self.YesWalkButton.enabled=YES;
    self.NoWalkButton.enabled=YES;
    //add or substract the proper points
    self.data.WakingUpPoints=self.data.WakingUpPoints+GREEN;
    //saves data in memory
    NSUserDefaults *defaults0=[NSUserDefaults standardUserDefaults];
    [defaults0 setInteger:self.data.WakingUpPoints forKey:@"key0"];
        [defaults0 synchronize];}


- (IBAction)NoWakeButton:(UIButton *)sender {
    self.data.WakingUpPoints=self.data.WakingUpPoints+RED;
    self.YesWakeButton.enabled=NO;
    self.YesWakeButton.alpha=0.3;
    self.NoWakeButton.enabled=NO;
    self.NextDayButton.enabled=NO;
    self.YesWalkButton.enabled=YES;
    self.NoWalkButton.enabled=YES;
    
    NSUserDefaults *defaults1=[NSUserDefaults standardUserDefaults];
    [defaults1 setInteger:self.data.WakingUpPoints forKey:@"key0"];
    [defaults1 synchronize];}


- (IBAction)YesWalkButton:(UIButton *)sender {
    self.data.WalkingUpPoints=self.data.WalkingUpPoints+GREEN;
    self.NoWalkButton.enabled=NO;
    self.NoWalkButton.alpha=0.3;
    self.YesWalkButton.enabled=NO;
    self.NextDayButton.enabled=NO;
    self.PersonalYesButton.enabled=YES;
    self.PersonalNoButton.enabled=YES;
    self.PersonalAlmostButton.enabled=YES;
    
    NSUserDefaults *defaults2=[NSUserDefaults standardUserDefaults];
    [defaults2 setInteger:self.data.WalkingUpPoints forKey:@"key1"];
    [defaults2 synchronize];}

- (IBAction)NoWalkButton:(UIButton *)sender {
    self.data.WalkingUpPoints=self.data.WalkingUpPoints+RED;
    self.YesWalkButton.enabled=NO;
    self.YesWalkButton.alpha=0.3;
    self.NoWalkButton.enabled=NO;
    self.NextDayButton.enabled=NO;
    self.PersonalYesButton.enabled=YES;
    self.PersonalNoButton.enabled=YES;
    self.PersonalAlmostButton.enabled=YES;

    NSUserDefaults *defaults3=[NSUserDefaults standardUserDefaults];
    [defaults3 setInteger:self.data.WalkingUpPoints forKey:@"key1"];
    [defaults3 synchronize];}


- (IBAction)HoursSlider:(UISlider *)sender {
    self.SliderHoursLabel.text=[NSString stringWithFormat:@"Hours:%.0f",sender.value];}

- (IBAction)PersonalYesButton:(UIButton *)sender {
    self.data.PersonalAchievementsPoints=self.data.PersonalAchievementsPoints+GREEN;
    self.PersonalAlmostButton.enabled=NO;
    self.PersonalAlmostButton.alpha=0.3;
    self.PersonalNoButton.enabled=NO;
    self.PersonalNoButton.alpha=0.3;
    self.PersonalYesButton.enabled=NO;
    self.NextDayButton.enabled=YES;
    self.NextDayButton.alpha=1;
    

    NSUserDefaults *defaults4=[NSUserDefaults standardUserDefaults];
    [defaults4 setInteger:self.data.PersonalAchievementsPoints forKey:@"key3"];
    [defaults4 synchronize];}


- (IBAction)PersonalAlmostButton:(UIButton *)sender {
    self.data.PersonalAchievementsPoints=self.data.PersonalAchievementsPoints+ORANGE;
    self.PersonalYesButton.enabled=NO;
    self.PersonalYesButton.alpha=0.3;
    self.PersonalNoButton.enabled=NO;
    self.PersonalNoButton.alpha=0.3;
    self.PersonalAlmostButton.enabled=NO;
    self.NextDayButton.enabled=YES;
    self.NextDayButton.alpha=1;
    
    NSUserDefaults *defaults5=[NSUserDefaults standardUserDefaults];
    [defaults5 setInteger:self.data.PersonalAchievementsPoints forKey:@"key3"];
    [defaults5 synchronize];}


- (IBAction)PersonalNoButton:(UIButton *)sender {
    self.data.PersonalAchievementsPoints=self.data.PersonalAchievementsPoints+RED;
    self.PersonalYesButton.enabled=NO;
    self.PersonalYesButton.alpha=0.3;
    self.PersonalAlmostButton.enabled=NO;
    self.PersonalAlmostButton.alpha=0.3;
    self.PersonalNoButton.enabled=NO;
    self.NextDayButton.enabled=YES;
    self.NextDayButton.alpha=1;
    
    NSUserDefaults *defaults6=[NSUserDefaults standardUserDefaults];
    [defaults6 setInteger:self.data.PersonalAchievementsPoints forKey:@"key3"];
    [defaults6 synchronize];}



//once all the parameters have been subbmited this button will allow the user to start
//submitting again and also in order to send the slider value data to the data model
// in order to avoid wrong data saving with the slider issues
- (IBAction)NextDayButton:(UIButton *)sender {
    //It also adds a day to the day counter data and save it
    self.data.Day++;
    NSUserDefaults *defaults31=[NSUserDefaults standardUserDefaults];
    [defaults31 setInteger:self.data.Day forKey:@"key31"];
    [defaults31 synchronize];
    
    //It set the buttons so you can only press start again after subbmiting
    self.YesWakeButton.enabled=NO;
    self.YesWakeButton.alpha=0.3;
    self.NoWakeButton.enabled=NO;
    self.NoWakeButton.alpha=0.3;
    self.YesWalkButton.enabled=NO;
    self.YesWalkButton.alpha=0.3;
    self.NoWalkButton.enabled=NO;
    self.NoWalkButton.alpha=0.3;
    self.HoursSlider.enabled=NO;
    self.HoursSlider.alpha=0.3;
    self.PersonalYesButton.enabled=NO;
    self.PersonalYesButton.alpha=0.3;
    self.PersonalAlmostButton.enabled=NO;
    self.PersonalAlmostButton.alpha=0.3;
    self.PersonalNoButton.enabled=NO;
    self.PersonalNoButton.alpha=0.3;
    self.StartDayButton.enabled=YES;
    self.StartDayButton.alpha=1.0;
     self.NextDayButton.enabled=NO;
    
  #pragma mark saving slider points depending on slider value
   
    
    if(self.HoursSlider.value<3){
        self.data.SocialMediaPoints=GREEN+self.data.SocialMediaPoints;
        NSUserDefaults *defaults70=[NSUserDefaults standardUserDefaults];
        [defaults70 setInteger:self.data.SocialMediaPoints forKey:@"key2"];
        [defaults70 synchronize];
    }else if(self.HoursSlider.value>3 && self.HoursSlider.value<5){
        self.data.SocialMediaPoints=ORANGE+self.data.SocialMediaPoints;
        NSUserDefaults *defaults71=[NSUserDefaults standardUserDefaults];
        [defaults71 setInteger:self.data.SocialMediaPoints forKey:@"key2"];
        [defaults71 synchronize];
    }else if (self.HoursSlider.value>5 && self.HoursSlider.value<8){
        self.data.SocialMediaPoints=RED+self.data.SocialMediaPoints;
        NSUserDefaults *defaults72=[NSUserDefaults standardUserDefaults];
        [defaults72 setInteger:self.data.SocialMediaPoints forKey:@"key2"];
        [defaults72 synchronize];
    }else{
        self.data.SocialMediaPoints=REDDOUBLEPENALTY+self.data.SocialMediaPoints;
        NSUserDefaults *defaults73=[NSUserDefaults standardUserDefaults];
        [defaults73 setInteger:self.data.SocialMediaPoints forKey:@"key2"];
        [defaults73 synchronize];}}



- (IBAction)StartDayButton:(UIButton *)sender {//It allows to start a new submission
    self.StartDayButton.enabled=NO;
    self.StartDayButton.alpha=0.3;
    self.YesWakeButton.enabled=YES;
    self.YesWakeButton.alpha=1;
    self.NoWakeButton.enabled=YES;
    self.NoWakeButton.alpha=1;
    self.YesWalkButton.enabled=NO;
    self.YesWalkButton.alpha=1;
    self.NoWalkButton.enabled=NO;
    self.NoWalkButton.alpha=1;
    self.HoursSlider.enabled=YES;
    self.HoursSlider.alpha=1;
    self.PersonalYesButton.enabled=NO;
    self.PersonalYesButton.alpha=1;
    self.PersonalAlmostButton.enabled=NO;
    self.PersonalAlmostButton.alpha=1;
    self.PersonalNoButton.enabled=NO;
    self.PersonalNoButton.alpha=1;
    self.NextDayButton.enabled=NO;
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}
@end
