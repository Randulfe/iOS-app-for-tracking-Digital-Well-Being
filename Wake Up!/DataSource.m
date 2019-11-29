//
//  DataSource.m
//  Wake Up!
//
//  Created by Mateo Gomez-Randulfe Rodriguez [el15mggr] on 21/11/2016.
//  Copyright © 2016 University of Leeds. All rights reserved.
//

#import "DataSource.h"

@implementation DataSource




-(id) init{ //setting initial conditions
    self=[super init];
    if (self){
        
        //defining my valoration messages array
        self.ValorationMessage= @[@"You need to improve",@"You can make it better ;)",@"Well done!"];
        //defining initial conditions for my valoration and day integers
        self.Day=0;
        self.WakingUpPoints=0;
        self.WalkingUpPoints=0;
        self.SocialMediaPoints=0;
        self.PersonalAchievementsPoints=0;
        
    }
    return self;
}



/*  Here I define the methods that will provide the desired data to my profile view. 
 Therefore, here the data model will be like the link between the profile and daily check
 views, acting as an intermediate. in fact, I am storing the data I got from the daily check in the data model
 in order to use it like for other views
 The method is the same as the one I explained in the home view comments PART1 and PART2
 The only difference is that I use a series of if conditions in order to take the proper 
 address and intance from the button it was pressed and not from the one it was not pressed
 */



#pragma mark Data saved in the data model


+(NSInteger) save0{ //For waking up on time point data
 NSInteger WakingUpPoints;
NSUserDefaults *defaults0=[NSUserDefaults standardUserDefaults];
NSUserDefaults *defaults1=[NSUserDefaults standardUserDefaults];
   WakingUpPoints=[defaults0 integerForKey:@"key0" ];
        [defaults0 synchronize];
 WakingUpPoints=[defaults1 integerForKey:@"key0" ];
        [defaults1 synchronize];
    return WakingUpPoints;
}



+(NSInteger)save1{ //for being walking more and being more active points data
     NSInteger WalkingUpPoints = 0;
    NSUserDefaults *defaults2=[NSUserDefaults standardUserDefaults];
    NSUserDefaults *defaults3=[NSUserDefaults standardUserDefaults];
    if(defaults2!=nil){
       WalkingUpPoints=[defaults2 integerForKey:@"key1" ];
        [defaults2 synchronize];}
    else if(defaults3!=nil){
     WalkingUpPoints=[defaults3 integerForKey:@"key1" ];
        [defaults3 synchronize];}
    return WalkingUpPoints;
}

+(NSInteger)save2{
    NSUserDefaults *defaults4=[NSUserDefaults standardUserDefaults];
    NSUserDefaults *defaults5=[NSUserDefaults standardUserDefaults];
    NSUserDefaults *defaults6=[NSUserDefaults standardUserDefaults];
    NSInteger PersonalAchievementsPoints=0;
    if(defaults4!=nil){
     PersonalAchievementsPoints=[defaults4 integerForKey:@"key3" ];
        [defaults4 synchronize];}
    else if(defaults5!=nil){
    PersonalAchievementsPoints=[defaults5 integerForKey:@"key3" ];
        [defaults5 synchronize];}
    else if(defaults6!=nil){
    PersonalAchievementsPoints=[defaults6 integerForKey:@"key3" ];
        [defaults6 synchronize];}
    return PersonalAchievementsPoints;
}



+(NSInteger)save3{ //For the time spent in the phone or TV data points
    NSInteger SocialMediaPoints=0;
    NSUserDefaults *defaults70=[NSUserDefaults standardUserDefaults];
    NSUserDefaults *defaults71=[NSUserDefaults standardUserDefaults];
    NSUserDefaults *defaults72=[NSUserDefaults standardUserDefaults];
    NSUserDefaults *defaults73=[NSUserDefaults standardUserDefaults];
    if(defaults70!=nil){
    SocialMediaPoints =[defaults70 integerForKey:@"key2" ];
        [defaults70 synchronize];}
    else if(defaults71!=nil){
        SocialMediaPoints =[defaults71 integerForKey:@"key2" ];
        [defaults71 synchronize];}
    else if(defaults72!=nil){
        SocialMediaPoints =[defaults72 integerForKey:@"key2" ];
        [defaults72 synchronize];}
    else if(defaults73!=nil){
        SocialMediaPoints =[defaults73 integerForKey:@"key2" ];
        [defaults73 synchronize];}
    return SocialMediaPoints;
}



+(NSInteger) save4{ //For the day counter
    NSInteger Day=0;
    NSUserDefaults *defaults31=[NSUserDefaults standardUserDefaults];
    if(defaults31!=nil){
    Day=[defaults31 integerForKey:@"key31" ];
        [defaults31 synchronize];}
    return Day;
}








@end
