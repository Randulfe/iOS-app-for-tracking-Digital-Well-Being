//
//  FirstViewController.m
//  Wake Up!
//
//  Created by Mateo Gomez-Randulfe Rodriguez [el15mggr] on 14/11/2016.
//  Copyright © 2016 University of Leeds. All rights reserved.
//

#import "HomeViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //initial conditions when the view is first charged come here in the viewdidload
    
    
    self.textfield.delegate=self; //assigns the delegate classes to the textfield button
    
    
    
    /*Here I set the date
     I got inspired form
     I use the NSDate classes for setting and displaying the proper date
     I create an istance of NSDateFormatter and I alloc and initialise it
     I set how the date is going to be displayed then
     Then I assign my date string instance to the calculated date from the date instace a created before
     Finally I set my label to my date string */
    NSDateFormatter *dateformat=[[NSDateFormatter alloc] init];
    [dateformat setDateFormat:@"dd/MM/yyyy"];
    self.Date=[dateformat stringFromDate:[NSDate date]];
    self.DateLabel.text=self.Date;
    
    
    
    
    /*
     PART2
     Before reading this go bellow and read PART1 in order to understand this
     In order to take the data I saved in my memory I had first to create a UseresDefault as I did for saving the data.
     Then, in general (basically in order parts of the code in other views this will be more used) I assign a instance created (before or in that moment depending in what I want) to the object saved in the proper address I chose for it
     */
    NSUserDefaults *defaults1000=[NSUserDefaults standardUserDefaults];
    NSString *display; //I create an instance for getting my data and using it
   
    // I use this part of the code for displaying a prper message in case there is
    //nothing to display because it is the first time it is installed in the device
    if(defaults1000!=nil){
    display=[defaults1000 objectForKey:@"1000"];
    [self.textfield setText:display]; //I set the data I got from the text field to my instance
    }
    
    else{//if it is the first time the app is in the device....
    display=[NSString stringWithFormat:@"Write your name bellow!"];}
    
    
    //set the name label to the instance containing the data
    self.NameLabel.text=[NSString stringWithFormat:@" %@",display];
    
}





- (IBAction)SaveButton:(UIButton *)sender {
    /*
     PART 1
     
     Here is the first time I use a programming technique I used all over my code
     I got the inspiration from
     This technique basically stores some object in the memory, string, integers,floats etc
     Therefore, if the user closes the app when he opens it again he will still have his scores, days names or anything stored back
    
     I will explain here the technique so that then I will refer to this point in case you need to know how did I store and share my data between tab bars
    
     --------------------------------------------------------------------------------
     
     First I created a UserDefaults instance.This class helps the programmer to save data in the device. Then I set my instance with a standarduserdefaults method
     Afterwards, I assign the desired data I want to save(in this case called save) to an adress. I dont really know if this will be a memory address(I guess so) but it will basically create a path in the same way addresses work.
     Then I had to sinchronise my usersdefault instance
     Now I have saved the instance or object I wanted into the device memory.
     In case I want to use it in another view or another part of the code I would have to take that data from the memory. This is explained above in the part 2.
    */
    NSString *save=self.textfield.text;
    NSUserDefaults *defaults1000=[NSUserDefaults standardUserDefaults];
    [defaults1000 setObject:save forKey:@"1000"];
    [defaults1000 synchronize];
    self.NameLabel.text=[NSString stringWithFormat:@"Welcome %@",save];
    //If save button is pressed the name written will be saved
}





- (IBAction)removekeyboard:(id)sender {   //if any part of the screen is pressed the keyboard that appeared for writingn the text field will dissapear.
    [self.view endEditing:YES]; //I got the inspiration of how to do this from
}





-(BOOL) textFieldShouldReturn:(UITextField *)textField{
    // method for making that
    //everytime the retun button of the keyboard is pressed it will dissapear.
    [textField resignFirstResponder];
    return YES;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}
@end
