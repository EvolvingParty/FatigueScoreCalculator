#import "Tab1_ViewController.h"

@implementation Tab1_ViewController

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
	// Do any additional setup after loading the view, typically from a nib.
    if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 3.2) {
		[[NSNotificationCenter defaultCenter] addObserver:self
												 selector:@selector(keyboardDidShow:)
													 name:UIKeyboardDidShowNotification
												   object:nil];
	} else {
		[[NSNotificationCenter defaultCenter] addObserver:self
												 selector:@selector(keyboardWillShow:)
													 name:UIKeyboardWillShowNotification
												   object:nil];
	}
    
    [Txt1 setHidden:NO];
    [Txt2 setHidden:NO];
    [textField1 setHidden:NO];
    [Step1Done setHidden:NO];
    [Txt3 setHidden:YES];
    [Txt4 setHidden:YES];
    [textField2 setHidden:YES];
    [Step2Done setHidden:YES];
    [Txt5 setHidden:YES];
    [Txt6 setHidden:YES];
    [textField3 setHidden:YES];
    [Step3Done setHidden:YES];
    [Txt7 setHidden:YES];
    [Txt8 setHidden:YES];
    [textField4 setHidden:YES];
    [Calculate setHidden:YES];
//    [Danger setHidden:YES];
    [textField1 becomeFirstResponder];
}

- (void)viewWillAppear:(BOOL)flag {
    [super viewWillAppear:flag];
   
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation != UIInterfaceOrientationPortraitUpsideDown);
}

- (IBAction) Step1
{
    float number = ([textField1.text floatValue]);
   /* if (number >= 0 && number <= 24) {
            }
    if ([textField1.text length] <= 0) {UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the amount of sleep you have had in the last 24 hours. The value should be between 0 and 24 hours." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    } */
    if (number > 24 || [textField1.text length] <= 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the amount of sleep you have had in the last 24 hours. The value should be between 0 and 24 hours." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    else {
    [Txt1 setHidden:YES];
    [Txt2 setHidden:YES];
    [textField1 setHidden:YES];
    [Step1Done setHidden:YES];
    [Txt3 setHidden:NO];
    [Txt4 setHidden:NO];
    [textField2 setHidden:NO];
    [Step2Done setHidden:NO];
    [Txt5 setHidden:YES];
    [Txt6 setHidden:YES];
    [textField3 setHidden:YES];
    [Step3Done setHidden:YES];
    [Txt7 setHidden:YES];
    [Txt8 setHidden:YES];
    [textField4 setHidden:YES];
    [Calculate setHidden:YES];
 //   [Danger setHidden:YES];
    [textField2 becomeFirstResponder];
    }
}

- (IBAction) Step2
{
    float number = ([textField2.text floatValue]);
    if (number > 24 || [textField2.text length] <= 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the amount of sleep you had in the preceeding 24 hours. The value should be between 0 and 24 hours." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    else {
    [Txt1 setHidden:YES];
    [Txt2 setHidden:YES];
    [textField1 setHidden:YES];
    [Step1Done setHidden:YES];
    [Txt3 setHidden:YES];
    [Txt4 setHidden:YES];
    [textField2 setHidden:YES];
    [Step2Done setHidden:YES];
    [Txt5 setHidden:NO];
    [Txt6 setHidden:NO];
    [textField3 setHidden:NO];
    [Step3Done setHidden:NO];
    [Txt7 setHidden:YES];
    [Txt8 setHidden:YES];
    [textField4 setHidden:YES];
    [Calculate setHidden:YES];
  //  [Danger setHidden:YES];
    [textField3 becomeFirstResponder];
    }
}

- (IBAction) Step3
{
    if ([textField3.text length] <= 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the number of hours you have been awake since your last shift." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    else {
    [Txt1 setHidden:YES];
    [Txt2 setHidden:YES];
    [textField1 setHidden:YES];
    [Step1Done setHidden:YES];
    [Txt3 setHidden:YES];
    [Txt4 setHidden:YES];
    [textField2 setHidden:YES];
    [Step2Done setHidden:YES];
    [Txt5 setHidden:YES];
    [Txt6 setHidden:YES];
    [textField3 setHidden:YES];
    [Step3Done setHidden:YES];
    [Txt7 setHidden:NO];
    [Txt8 setHidden:NO];
    [textField4 setHidden:NO];
    [Calculate setHidden:NO];
 //   [Danger setHidden:YES];
    [textField4 becomeFirstResponder];
    }
}

- (IBAction) calculate
{
    if ([textField4.text length] <= 0) {
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Alert" message:@"Please enter the length of your next shift." delegate : self cancelButtonTitle:@"OK" otherButtonTitles: nil];
        [alert show];
    }
    else {
	float number1 = ([textField1.text floatValue]);
    if (number1 <= 2 && number1 >= 0) {Score2.text = @"12";}
    if (number1 == 3) {Score2.text = @"8";}
    if (number1 == 4) {Score2.text = @"4";}
    if (number1 >= 5 && number1 <= 24) {Score2.text = @"0";}
    
    float step1 = ([Score2.text floatValue]);
    
    float number2 = ([textField2.text floatValue]);
    if (number2+number1 <= 8) {Score3.text = @"8";}
    if (number2+number1 == 9) {Score3.text = @"6";}
    if (number2+number1 == 10) {Score3.text = @"4";}
    if (number2+number1 >= 11) {Score3.text = @"2";}
    if (number2+number1 >= 12) {Score3.text = @"0";}
    
    float step2 = ([Score3.text floatValue]);
    
    float number3 = ([textField3.text floatValue]);
    float number4 = ([textField4.text floatValue]);
    if (number2+number1 >= number3+number4) {Score4.text = @"0";}
    if (number2+number1 < number3+number4) {
        float step3 = ((number3+number4)-(number2+number1));
        Score4.text = [[NSString alloc] initWithFormat:@"%.0f", step3];}
    
    float step4 = ([Score4.text floatValue]);
    
    float total = step4+step2+step1;
    Score.text = [[NSString alloc] initWithFormat:@"%.0f", total];
    
    if (total <= 0 && total < 1) {
        ScoreBkgrnd.backgroundColor = [UIColor greenColor];
        Action.text = @"No action required";
        
        arrow.center = CGPointMake(160.0, 364.0);
        //arrow.transform = CGAffineTransformMakeRotation(M_PI/8); //rotation in radians
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:5];
        //theImageView.frame = CGRectMake(0, 0, 0, 0);
        //theImageView.center=CGPointMake(self.theImageView.center.x, self.theImageView.center.y);
        arrow.transform = CGAffineTransformMakeRotation(M_PI/8);
        [UIView commitAnimations];

    }
    if (total >= 1 && total <= 5) {
        ScoreBkgrnd.backgroundColor = [UIColor yellowColor];
        Action.text = @"Notify communications centre, mitigation strategies based on monitoring your own behaviour";
        
        arrow.center = CGPointMake(160.0, 364.0);
        //arrow.transform = CGAffineTransformMakeRotation(M_PI/2.65); //rotation in radians
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:5];
        //theImageView.frame = CGRectMake(0, 0, 0, 0);
        //theImageView.center=CGPointMake(self.theImageView.center.x, self.theImageView.center.y);
        arrow.transform = CGAffineTransformMakeRotation(M_PI/2.65);
        [UIView commitAnimations];

    }
    if (total >= 6 && total <= 12) {
        ScoreBkgrnd.backgroundColor = [UIColor orangeColor];
        Action.text = @"Notify communications centre, mitigation strategies based on error proofing and looking out for each other";
        
        arrow.center = CGPointMake(160.0, 364.0);
        //arrow.transform = CGAffineTransformMakeRotation(M_PI/1.6); //rotation in radians
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:5];
        //theImageView.frame = CGRectMake(0, 0, 0, 0);
        //theImageView.center=CGPointMake(self.theImageView.center.x, self.theImageView.center.y);
        arrow.transform = CGAffineTransformMakeRotation(M_PI/1.6);
        [UIView commitAnimations];

    }
    if (total > 12) {
        ScoreBkgrnd.backgroundColor = [UIColor redColor];
        Action.text = @"Notify communications centre and supervisor immediatly";
        Action.text = @"Notify communications centre, mitigation strategies based on monitoring your own behaviour";
        
        arrow.center = CGPointMake(160.0, 364.0);
        //arrow.transform = CGAffineTransformMakeRotation(M_PI/1.135); //rotation in radians
        [UIView beginAnimations:nil context:NULL];
        [UIView setAnimationDuration:5];
        //theImageView.frame = CGRectMake(0, 0, 0, 0);
        //theImageView.center=CGPointMake(self.theImageView.center.x, self.theImageView.center.y);
        arrow.transform = CGAffineTransformMakeRotation(M_PI/1.135);
        [UIView commitAnimations];
    }
    
    [Txt1 setHidden:YES];
    [Txt2 setHidden:YES];
    [textField1 setHidden:YES];
    [Step1Done setHidden:YES];
    [Txt3 setHidden:YES];
    [Txt4 setHidden:YES];
    [textField2 setHidden:YES];
    [Step2Done setHidden:YES];
    [Txt5 setHidden:YES];
    [Txt6 setHidden:YES];
    [textField3 setHidden:YES];
    [Step3Done setHidden:YES];
    [Txt7 setHidden:YES];
    [Txt8 setHidden:YES];
    [textField4 setHidden:YES];
    [Calculate setHidden:YES];
    [Danger setHidden:NO];
    [textField4 resignFirstResponder];

    

}
}

- (void)addButtonToKeyboard {
	// create custom button
	UIButton *doneButton = [UIButton buttonWithType:UIButtonTypeCustom];
	doneButton.frame = CGRectMake(0, 163, 106, 53);
	doneButton.adjustsImageWhenHighlighted = NO;
	if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 3.0) {
		[doneButton setImage:[UIImage imageNamed:@"DoneUp3.png"] forState:UIControlStateNormal];
		[doneButton setImage:[UIImage imageNamed:@"DoneDown3.png"] forState:UIControlStateHighlighted];
	} else {
		[doneButton setImage:[UIImage imageNamed:@"DoneUp.png"] forState:UIControlStateNormal];
		[doneButton setImage:[UIImage imageNamed:@"DoneDown.png"] forState:UIControlStateHighlighted];
	}
	[doneButton addTarget:self action:@selector(doneButton:) forControlEvents:UIControlEventTouchUpInside];
	// locate keyboard view
	UIWindow* tempWindow = [[[UIApplication sharedApplication] windows] objectAtIndex:1];
	UIView* keyboard;
	for(int i=0; i<[tempWindow.subviews count]; i++) {
		keyboard = [tempWindow.subviews objectAtIndex:i];
		// keyboard found, add the button
		if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 3.2) {
			if([[keyboard description] hasPrefix:@"<UIPeripheralHost"] == YES)
				[keyboard addSubview:doneButton];
		} else {
			if([[keyboard description] hasPrefix:@"<UIKeyboard"] == YES)
				[keyboard addSubview:doneButton];
		}
	}
    
}

- (void)keyboardWillShow:(NSNotification *)note {
	// if clause is just an additional precaution, you could also dismiss it
	if ([[[UIDevice currentDevice] systemVersion] floatValue] < 3.2) {
		[self addButtonToKeyboard];
	}
}

- (void)keyboardDidShow:(NSNotification *)note {
	// if clause is just an additional precaution, you could also dismiss it
	if ([[[UIDevice currentDevice] systemVersion] floatValue] >= 3.2) {
		[self addButtonToKeyboard];
    }
}


- (void)doneButton:(id)sender {
	NSLog(@"doneButton");
    NSLog(@"Input: %@", textField1.text);
    [textField1 resignFirstResponder];
    NSLog(@"Input: %@", textField2.text);
    [textField2 resignFirstResponder];
    NSLog(@"Input: %@", textField3.text);
    [textField3 resignFirstResponder];
    NSLog(@"Input: %@", textField4.text);
    [textField4 resignFirstResponder];
}

@end
