//
//  SecondViewController.h
//  Wake Up!
//
//  Created by Mateo Gomez-Randulfe Rodriguez [el15mggr] on 14/11/2016.
//  Copyright © 2016 University of Leeds. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "DataSource.h"

@interface DailyCheckViewController : UIViewController




@property (weak, nonatomic) IBOutlet UILabel *SliderHoursLabel;



@property (strong,nonatomic) DataSource *data; //creating a object for the data model class
// in order to use its instances and methods


//I set the buttons not only as actions but also as outlets in order to be able to enable them
//and change their characteristics
@property (weak, nonatomic) IBOutlet UIButton *YesWakeButton;
@property (weak, nonatomic) IBOutlet UIButton *NoWakeButton;

@property (weak, nonatomic) IBOutlet UIButton *YesWalkButton;
@property (weak, nonatomic) IBOutlet UIButton *NoWalkButton;

@property (weak, nonatomic) IBOutlet UISlider *HoursSlider;

@property (weak, nonatomic) IBOutlet UIButton *PersonalYesButton;
@property (weak, nonatomic) IBOutlet UIButton *PersonalNoButton;
@property (weak, nonatomic) IBOutlet UIButton *PersonalAlmostButton;

@property (weak, nonatomic) IBOutlet UIButton *StartDayButton;

@property (weak, nonatomic) IBOutlet UIButton *NextDayButton;






//buttons for the four parameters evaluated
- (IBAction)YesWakeButton:(UIButton *)sender;
- (IBAction)NoWakeButton:(UIButton *)sender;


- (IBAction)YesWalkButton:(UIButton *)sender;
- (IBAction)NoWalkButton:(UIButton *)sender;


- (IBAction)HoursSlider:(UISlider *)sender;


- (IBAction)PersonalYesButton:(UIButton *)sender;
- (IBAction)PersonalAlmostButton:(UIButton *)sender;
- (IBAction)PersonalNoButton:(UIButton *)sender;

//button for "savng" the day data and beeing able to submit a new day evaluation
- (IBAction)NextDayButton:(UIButton *)sender;
//button for starting the evaluation
- (IBAction)StartDayButton:(UIButton *)sender;


@end

