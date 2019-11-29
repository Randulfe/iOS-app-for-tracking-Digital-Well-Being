//
//  DataSource.h
//  Wake Up!
//
//  Created by Mateo Gomez-Randulfe Rodriguez [el15mggr] on 21/11/2016.
//  Copyright © 2016 University of Leeds. All rights reserved.
//

#import <Foundation/Foundation.h>



@interface DataSource : NSObject


//Here I define the points penalty and criteria just in case later I want to change their values
#define RED -1
#define GREEN 1
#define ORANGE 0
#define REDDOUBLEPENALTY -2


//I set the parameters of my app like the day and basically the points intances for the different
//sections of my appp that will be valorated (depending on what the user did that day)
@property NSInteger WakingUpPoints;
@property NSInteger WalkingUpPoints;
@property NSInteger SocialMediaPoints;
@property NSInteger PersonalAchievementsPoints;
@property NSInteger Day;
@property (strong,nonatomic)  NSArray *ValorationMessage;
//above the string that ,evaluated your daily performance, and tells you how you are doing

@property (nonatomic) float AverageScore;


/*here I define the methods where I will take the data for the different sections (the four
 valorated sections and the day) saved in the memory in order to allow the profile view
 to call this classes functions. Once it calls this clases it will the the points or days stored.
 */
+(NSInteger) save0;
+(NSInteger) save1;
+(NSInteger)save2;
+(NSInteger) save3;
+(NSInteger) save4;


//initialise method for initial conditions
-(id) init;

@end
