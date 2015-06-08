//
//  BNRDetailViewController.m
//  0526NMTel
//
//  Created by Zhixue Li on 5/30/15.
//  Copyright (c) 2015 Zhixue Li. All rights reserved.
//

#import "BNRDetailViewController.h"
#import "BNRItem.h"

@interface BNRDetailViewController ()
@property (weak, nonatomic) IBOutlet UITextField *emailField;
@property (weak, nonatomic) IBOutlet UITextField *landLineField;
@property (weak, nonatomic) IBOutlet UITextField *cellPhoneField;
@property (weak, nonatomic) IBOutlet UITextField *nameField;

@end

@implementation BNRDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)viewWillAppear:(BOOL)animated
{
    //  NSLog(@"%@", self.item);
    [super viewWillAppear:animated];
    
    BNRItem *item = self.item;
    
    self.nameField.text = item.NMTelContactName;
    self.cellPhoneField.text = item.NMTelCellPhone;
    self.landLineField.text = item.NMTelLandLine;
    self.emailField.text = item.NMTelContactEmail;
}

- (void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    
    [self.view endEditing:YES];
    
    BNRItem *item = self.item;
    item.NMTelContactName = self.nameField.text;
    item.NMTelCellPhone = self.cellPhoneField.text;
    item.NMTelLandLine = self.landLineField.text;
    item.NMTelContactEmail = self.emailField.text;
  //  if ([item.NMTelContactName isEqual: @""]) {
  //
  //  }
}

- (void)setItem:(BNRItem *)item
{
    _item = item;
    self.navigationItem.title = _item.NMTelContactName;
}

- (IBAction)initCall:(id)sender
{
    NSString *num = self.cellPhoneField.text;// 此处读入电话号码
 //   NSLog(@"%@", num);
    NSString *number = [[NSString alloc] initWithFormat:@"tel://%@",num];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:number]]; //拨号
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
