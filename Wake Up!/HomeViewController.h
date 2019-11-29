//
//  FirstViewController.h
//  Wake Up!
//
//  Created by Mateo Gomez-Randulfe Rodriguez [el15mggr] on 14/11/2016.
//  Copyright © 2016 University of Leeds. All rights reserved.
//



#import <UIKit/UIKit.h>

@interface HomeViewController : UIViewController<UITextFieldDelegate>
//I added also the textfielddelegate classes for using then with my name display

 
 
 

@property (weak, nonatomic) IBOutlet UILabel *NameLabel; //Label for displaying the users name
@property (weak, nonatomic) IBOutlet UILabel *DateLabel; //label for diplaying the day mont an year



@property (strong,nonatomic) NSString *Date; //date string instance
@property (weak, nonatomic) IBOutlet UITextField *textfield; // text field where the user can write and save his name




- (IBAction)SaveButton:(UIButton *)sender; //button for saving the name if pressed
- (IBAction)removekeyboard:(id)sender; //this makes all the view screen as a button that when pressed it will remove the keyboard for writing the name

@end

