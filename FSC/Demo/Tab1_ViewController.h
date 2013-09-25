#import <UIKit/UIKit.h>
@interface Tab1_ViewController : UIViewController {
    IBOutlet UITextField *textField1;
    IBOutlet UITextField *textField2;
    IBOutlet UITextField *textField3;
    IBOutlet UITextField *textField4;
    IBOutlet UITextView *Action;
    IBOutlet UILabel *Score;
    IBOutlet UILabel *Score2;
    IBOutlet UILabel *Score3;
    IBOutlet UILabel *Score4;
    IBOutlet UIImageView *ScoreBkgrnd;
    IBOutlet UIImageView *Danger;
    IBOutlet UILabel *Txt1;
    IBOutlet UITextView *Txt2;
    IBOutlet UILabel *Txt3;
    IBOutlet UITextView *Txt4;
    IBOutlet UILabel *Txt5;
    IBOutlet UITextView *Txt6;
    IBOutlet UILabel *Txt7;
    IBOutlet UITextView *Txt8;
    IBOutlet UIButton *Step1Done;
    IBOutlet UIButton *Step2Done;
    IBOutlet UIButton *Step3Done;
    IBOutlet UIButton *Calculate;
    IBOutlet UIImageView *arrow;
    
}
- (IBAction) Step1;
- (IBAction) Step2;
- (IBAction) Step3;
- (IBAction) calculate;

@end
