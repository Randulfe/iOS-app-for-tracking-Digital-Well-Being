//
//  PropileViewController.m
//  Wake Up!
//
//  Created by Mateo Gomez-Randulfe Rodriguez [el15mggr] on 14/11/2016.
//  Copyright © 2016 University of Leeds. All rights reserved.
//

#import "ProfileViewController.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //alloquing data model object for using its instances
    self.data=[[DataSource alloc]init];
    
    
    #pragma mark setting first view load scores from previous sessions scores and data
    
    /*
     GO FIRST TO THE COMMENTS BELLOW IN LOAD BUTTON
     Read this after reading the comments in the Load button method part in this file.
     After saving our total score data I take it in the view did load.
     Then I set the instance I created for saving the previous sessions total scores
     to this value and I made the app to display these values first as soon as the app starts again
     With this plus wuth the code I set in load button I was able to set a proper total score for 
     each parameter that was saved effectively. Everytime the user opens the app the first score 
     displayed will the the one the user had previously. After this, if the user submits more
     "evaluations" once you press the load button the scores will update. Moreover, you do not 
     have to worry if you close the app because once you open it again the scores displayed
     would be the ones there were before closing after the last update
     */
    
    NSUserDefaults *defaults100=[NSUserDefaults standardUserDefaults];
    self.WI=[defaults100 integerForKey:@"key100" ];
    [defaults100 synchronize];
    self.WakingUpPLabel.text=[NSString stringWithFormat:@"Wake Up Points:%ld",self.WI];

    NSUserDefaults *defaults101=[NSUserDefaults standardUserDefaults];
    self.WLI=[defaults101 integerForKey:@"key101" ];
    [defaults101 synchronize];
    self.WalkingPLabel.text=[NSString stringWithFormat:@"Walking Points:%ld",self.WLI];
    
    NSUserDefaults *defaults102=[NSUserDefaults standardUserDefaults];
    self.SI=[defaults102 integerForKey:@"key102" ];
    [defaults102 synchronize];
    self.SocialMediaLabel.text=[NSString stringWithFormat:@"Social Media/TV Points:%ld",self.SI];
    
    NSUserDefaults *defaults103=[NSUserDefaults standardUserDefaults];
    self.AI=[defaults103 integerForKey:@"key103" ];
    [defaults103 synchronize];
    self.AchievementsPLabel.text=[NSString stringWithFormat:@"Personal Objectives Points:%ld",self.AI];

    NSUserDefaults *defaults104=[NSUserDefaults standardUserDefaults];
    self.DI=[defaults104 integerForKey:@"key104" ];
    [defaults104 synchronize];
    self.DayCounterLabel2.text=[NSString stringWithFormat:@"Day:%.0f",self.DI];

    NSUserDefaults *defaults105=[NSUserDefaults standardUserDefaults];
    self.TI=[defaults105 integerForKey:@"key105" ];
    [defaults105 synchronize];
    self.TotalScoreLabel.text=[NSString stringWithFormat:@"Total Score:%.0f",self.TI];

    NSUserDefaults *defaults106=[NSUserDefaults standardUserDefaults];
    self.ASI=[defaults106 integerForKey:@"key106" ];
    [defaults106 synchronize];
    self.AverageScoreLabel.text=[NSString stringWithFormat:@"Average Score:%.2f",self.ASI];

    NSUserDefaults *defaults107=[NSUserDefaults standardUserDefaults];
    self.DSI=[defaults107 integerForKey:@"key107" ];
    [defaults107 synchronize];
    self.YesterdayScoreLabel.text=[NSString stringWithFormat:@"Last Score:%ld",self.DSI];
    
    
    
    //setting the app valoration message depending on the last score achieved
    if(self.DSI<=1){
        self.MotivationLabel.text=[self.data.ValorationMessage objectAtIndex:0];
    } else if(self.DSI>1 && self.DSI<4){
        self.MotivationLabel.text=[self.data.ValorationMessage objectAtIndex:1];}
    else if(self.DSI>=4){
        self.MotivationLabel.text=[self.data.ValorationMessage objectAtIndex:2];}
    }


- (IBAction)ResetButton:(UIButton *)sender {
    
   /*
    READ BEFORE THE COMMENTS IN THE LOAD BUTTON AND IN THE VIEWDIDLOAD
    This button will set all the parameters to 0 in case the user wants to start again
    */
    
    
    
    
#pragma mark stting initial conditions for ressetting
    self.WP=0;
    self.WI=0;
    NSUserDefaults *defaults100=[NSUserDefaults standardUserDefaults];
    [defaults100 setInteger:self.WP forKey:@"key100"];
    [defaults100 synchronize];
    self.WakingUpPLabel.text=[NSString stringWithFormat:@"Wake Up Points:%ld",self.WP];
    
    
    self.WLP=0;
    self.WLI=0;
    NSUserDefaults *defaults101=[NSUserDefaults standardUserDefaults];
    [defaults101 setInteger:self.WLP forKey:@"key101"];
    [defaults101 synchronize];
    self.WalkingPLabel.text=[NSString stringWithFormat:@"Walking Points:%ld",self.WLP];
    
    
    self.SP=0;
    self.SI=0;
    NSUserDefaults *defaults102=[NSUserDefaults standardUserDefaults];
    [defaults102 setInteger:self.SP forKey:@"key102"];
    [defaults102 synchronize];
    self.SocialMediaLabel.text=[NSString stringWithFormat:@"Social Media/TV Points:%ld",self.SP];
    
    
    self.AP=0;
    self.AI=0;
    NSUserDefaults *defaults103=[NSUserDefaults standardUserDefaults];
    [defaults103 setInteger:self.AP forKey:@"key103"];
    [defaults103 synchronize];
    self.AchievementsPLabel.text=[NSString stringWithFormat:@"Personal Objectives Points:%ld",self.AP];
    
    
    self.DP=0;
    self.DI=0;
    NSUserDefaults *defaults104=[NSUserDefaults standardUserDefaults];
    [defaults104 setInteger:self.DP forKey:@"key104"];
    [defaults104 synchronize];
    self.DayCounterLabel2.text=[NSString stringWithFormat:@"Day:%.0f",self.DP];
    
    
    self.TP=0;
    self.TI=0;
    NSUserDefaults *defaults105=[NSUserDefaults standardUserDefaults];
    [defaults105 setInteger:self.TP forKey:@"key105"];
    [defaults105 synchronize];
    self.TotalScoreLabel.text=[NSString stringWithFormat:@"Total Score:%.0f",self.TP];
    
    
    self.ASP=0;
    self.ASI=0;
    NSUserDefaults *defaults106=[NSUserDefaults standardUserDefaults];
    [defaults106 setInteger:self.ASP forKey:@"key106"];
    [defaults106 synchronize];
    self.AverageScoreLabel.text=[NSString stringWithFormat:@"Average Score:%.2f",self.ASP];
    
    
    
    self.DSP=0;
    self.DSI=0;
    NSUserDefaults *defaults107=[NSUserDefaults standardUserDefaults];
    [defaults107 setInteger:self.DSP forKey:@"key107"];
    [defaults107 synchronize];
    self.YesterdayScoreLabel.text=[NSString stringWithFormat:@"Average Score:%ld",self.DSP];
    
    //message displayed in case reset is pressed
    self.MotivationLabel.text=[NSString stringWithFormat:@"Start a new life without procastination!"];
    


    
}

- (IBAction)LoadDetails:(UIButton *)sender {
    /*
     In this section I displayed the score from its parameter that corresponds with the one that
     adds the one from the previous session (in case the app was closed) plus the new points the 
     app got when running (intances terminated in "P"
     I set these instances adding a instance that I used for saving the  previous sessions data in the view did load (instances finished in "I") plus the new data added and stored after the app runs (set by the user in the daily check view) that I get calling the save methods from the data model
     Then, I save this score total points instances in my memory in order to be used in the
     view did load (see the view did load comments in this view for finish this explaination)
     If you do not know how did I store the data go to the comments in home view files,
     PART1 and PART2
     I finally display the scores using the instances finished in "P"
     */
    
    
    #pragma mark calculating and displaying scores while app is running
    self.WP =[DataSource save0]+self.WI;
    NSUserDefaults *defaults100=[NSUserDefaults standardUserDefaults];
    [defaults100 setInteger:self.WP forKey:@"key100"];
    [defaults100 synchronize];
    self.WakingUpPLabel.text=[NSString stringWithFormat:@"Wake Up Points:%ld",self.WP];
    
    self.WLP=[DataSource save1]+self.WLI;
    NSUserDefaults *defaults101=[NSUserDefaults standardUserDefaults];
    [defaults101 setInteger:self.WLP forKey:@"key101"];
    [defaults101 synchronize];
    self.WalkingPLabel.text=[NSString stringWithFormat:@"Walking Points:%ld",self.WLP];
    
    self.SP=[DataSource save3]+self.SI;
    NSUserDefaults *defaults102=[NSUserDefaults standardUserDefaults];
    [defaults102 setInteger:self.SP forKey:@"key102"];
    [defaults102 synchronize];
    self.SocialMediaLabel.text=[NSString stringWithFormat:@"Social Media/TV Points:%ld",self.SP];
    
    self.AP=[DataSource save2]+ self.AI;
    NSUserDefaults *defaults103=[NSUserDefaults standardUserDefaults];
    [defaults103 setInteger:self.AP forKey:@"key103"];
    [defaults103 synchronize];
    self.AchievementsPLabel.text=[NSString stringWithFormat:@"Personal Objectives Points:%ld",self.AP];
    
    self.DP=[DataSource save4]+ self.DI;
    NSUserDefaults *defaults104=[NSUserDefaults standardUserDefaults];
    [defaults104 setInteger:self.DP forKey:@"key104"];
    [defaults104 synchronize];
    self.DayCounterLabel2.text=[NSString stringWithFormat:@"Day:%.0f",self.DP];
    
    self.TP=(self.WP+self.WLP+self.SP+self.AP);
    NSUserDefaults *defaults105=[NSUserDefaults standardUserDefaults];
    [defaults105 setInteger:self.TP forKey:@"key105"];
    [defaults105 synchronize];
    self.TotalScoreLabel.text=[NSString stringWithFormat:@"Total Score:%.0f",self.TP];

    self.ASP=((self.TP)/self.DP);
    NSUserDefaults *defaults106=[NSUserDefaults standardUserDefaults];
    [defaults106 setInteger:self.ASP forKey:@"key106"];
    [defaults106 synchronize];
    self.AverageScoreLabel.text=[NSString stringWithFormat:@"Averange Score:%.2f",self.ASP];

    self.DSP=([DataSource save0]+[DataSource save1]+[DataSource save2]+[DataSource save3])/[DataSource save4];
    NSUserDefaults *defaults107=[NSUserDefaults standardUserDefaults];
    [defaults107 setInteger:self.DSP forKey:@"key107"];
    [defaults107 synchronize];
    self.YesterdayScoreLabel.text=[NSString stringWithFormat:@"Last Score:%ld",self.DSP];
    
    
    //valoration message while app is running
    if(self.DSP<=1){
        self.MotivationLabel.text=[self.data.ValorationMessage objectAtIndex:0];
    } else if(self.DSP>1 && self.DSP<4){
        self.MotivationLabel.text=[self.data.ValorationMessage objectAtIndex:1];}
    else if(self.DSP>=4){
        self.MotivationLabel.text=[self.data.ValorationMessage objectAtIndex:2];}
    }
  
    



#pragma mark sharing method
//I got inspired for this code in
//Here I use the activity view controller class for sharing the data with the social madia or
//copying it. If you dont have any session initialised in your device with facebook or
//twitter for example , you will not be abl to share the total score and average score
//with them as I could check
//I created a total and average score instances in order to pass the data through the
//activity methods
- (IBAction)share:(UIButton *)sender {
    NSString *TotalScoreShare=[NSString stringWithFormat:@"Total Score: %.0f",self.TP];
    NSString *AverageScoreShare=[NSString stringWithFormat:@"Total Score: %.0f",self.ASP];

    NSArray *sharearray=@[TotalScoreShare,AverageScoreShare];
    UIActivityViewController *activityvc=[[UIActivityViewController alloc]initWithActivityItems: sharearray applicationActivities:nil];
    activityvc.excludedActivityTypes =@[];
    [self presentViewController:activityvc animated:YES completion:nil];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
