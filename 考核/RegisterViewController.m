//
//  RegisterViewController.m
//  考核
//
//  Created by 强淑婷 on 2018/8/6.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "RegisterViewController.h"
#import "ViewController.h"
@interface RegisterViewController ()<UITextFieldDelegate>
@property (nonatomic, strong)UITextField *firstTextField;
@property (nonatomic, strong)UITextField *secondTextField;
@end

@implementation RegisterViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    _firstTextField = [[UITextField alloc] initWithFrame:CGRectMake(60, 330, 300, 50)];
    _firstTextField.backgroundColor = [UIColor whiteColor];
    _firstTextField.placeholder = @"请输入不少于6位";
    _firstTextField.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"user_img"]];
    _firstTextField.leftViewMode = UITextFieldViewModeAlways;
    _firstTextField.layer.cornerRadius = 3;
    UIImageView *imageViewline = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"竖线"]];
    imageViewline.frame = CGRectMake(43, 8, 2, 38);
    [_firstTextField addSubview:imageViewline];
    _firstTextField.delegate = self;
    [self.view addSubview:_firstTextField];
    
    _secondTextField = [[UITextField alloc] initWithFrame:CGRectMake(60, 390, 300, 50)];
    _secondTextField.backgroundColor = [UIColor whiteColor];
    _secondTextField.placeholder = @"请输入不少于8位";
    _secondTextField.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pass_img"]];
    _secondTextField.leftViewMode = UITextFieldViewModeAlways;
    _secondTextField.layer.cornerRadius = 3;
    UIImageView *imageViewline2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"竖线"]];
    imageViewline2.frame = CGRectMake(43, 8, 2, 38);
    [_secondTextField addSubview:imageViewline2];
    _secondTextField.delegate = self;
    [self.view addSubview:_secondTextField];
    
    
    UITextField *thirdTextField = [[UITextField alloc] initWithFrame:CGRectMake(60, 270, 300, 50)];
    thirdTextField.backgroundColor = [UIColor whiteColor];
    thirdTextField.placeholder = @"请输入汉字";
    thirdTextField.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@" "]];
    thirdTextField.leftViewMode = UITextFieldViewModeAlways;
    thirdTextField.layer.cornerRadius = 3;
    UIImageView *imageViewline3 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"竖线"]];
    imageViewline2.frame = CGRectMake(43, 8, 2, 38);
    [thirdTextField addSubview:imageViewline3];
    thirdTextField.delegate = self;
    [self.view addSubview: thirdTextField];
    
    
    
    UIButton *LoginButton = [[UIButton alloc] initWithFrame:CGRectMake(150, 470, 100, 40)];
    LoginButton.layer.cornerRadius = 5;
    LoginButton.layer.borderWidth = 0.5;
    LoginButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [LoginButton setTitle:@"确认注册" forState:UIControlStateNormal];
    [LoginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [LoginButton setTintColor:[UIColor whiteColor]];
    [LoginButton addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:LoginButton];
    // Do any additional setup after loading the view.
}
- (void) btnAction{
    ViewController *new = [[ViewController alloc] init];
    new.str1 = _firstTextField.text;
    new.str2 = _secondTextField.text;
    //[self dismissViewControllerAnimated:YES completion:nil];
    self.view.window.rootViewController = new;
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.firstTextField resignFirstResponder];
    [self.secondTextField resignFirstResponder];
    [self.view endEditing:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
