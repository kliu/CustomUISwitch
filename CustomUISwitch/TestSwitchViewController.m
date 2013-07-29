//
//  TestSwitchViewController.m
//  CustomUISwitch
//
//  Created by Sukie Zhao on 13-6-8.
//
//

#import "TestSwitchViewController.h"
#import "CustomSwitch.h"

@interface TestSwitchViewController ()
{
    IBOutlet CustomSwitch *_switchOne;
    IBOutlet CustomSwitch *_switchTwo;
    IBOutlet CustomSwitch *_switchThree;
    IBOutlet CustomSwitch *_switchFour;
}

@end

@implementation TestSwitchViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    _switchOne.arrange = CustomSwitchArrangeONLeftOFFRight;
    _switchOne.onImage = [UIImage imageNamed:@"switchOne_on.png"];
    _switchOne.offImage = [UIImage imageNamed:@"switchOne_off.png"];
    _switchOne.status = CustomSwitchStatusOff;
    
    _switchTwo.arrange = CustomSwitchArrangeOFFLeftONRight;
    _switchTwo.onImage = [UIImage imageNamed:@"switchTwo_on.png"];
    _switchTwo.offImage = [UIImage imageNamed:@"switchTwo_off.png"];
    _switchTwo.status = CustomSwitchStatusOff;
    

}

-(IBAction)asd:(id)sender
{
    NSLog(@"adf");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

#pragma mark - customSwitch delegate
-(void)customSwitchSetStatus:(CustomSwitchStatus)status
{
    switch (status) {
        case CustomSwitchStatusOn:
            //todo
            break;
        case CustomSwitchStatusOff:
            //todo
            break;
        default:
            break;
    }
}
@end
