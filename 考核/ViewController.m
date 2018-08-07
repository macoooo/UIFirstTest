//
//  ViewController.m
//  考核
//
//  Created by 强淑婷 on 2018/8/6.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "ViewController.h"
#import "RegisterViewController.h"
#import "MineViewController.h"
#import "YourViewController.h"
@interface ViewController ()<UITextFieldDelegate>
@property (nonatomic, strong)UITextField *firsttTextField;
@property (nonatomic, strong)UITextField *seconddTextField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor redColor];
    
    _firsttTextField = [[UITextField alloc] initWithFrame:CGRectMake(60, 330, 300, 50)];
    _firsttTextField.backgroundColor = [UIColor whiteColor];
    _firsttTextField.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"user_img"]];
    _firsttTextField.leftViewMode = UITextFieldViewModeAlways;
    _firsttTextField.placeholder = @"请输入不少于6位";
    _firsttTextField.layer.cornerRadius = 3;
    UIImageView *imageViewline = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"竖线"]];
    imageViewline.frame = CGRectMake(43, 8, 2, 38);
    [_firsttTextField addSubview:imageViewline];
    _firsttTextField.delegate = self;
    [self.view addSubview:_firsttTextField];
     _firsttTextField.text = _str1;
    
    _seconddTextField = [[UITextField alloc] initWithFrame:CGRectMake(60, 390, 300, 50)];
    _seconddTextField.backgroundColor = [UIColor whiteColor];
    _seconddTextField.placeholder = @"请输入不少于8位";
    _seconddTextField.leftView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"pass_img"]];
    _seconddTextField.leftViewMode = UITextFieldViewModeAlways;
    _seconddTextField.layer.cornerRadius = 3;
    UIImageView *imageViewline2 = [[UIImageView alloc]initWithImage:[UIImage imageNamed:@"竖线"]];
    imageViewline2.frame = CGRectMake(43, 8, 2, 38);
    [_seconddTextField addSubview:imageViewline2];
    _seconddTextField.delegate = self;
    [self.view addSubview:_seconddTextField];
    _seconddTextField.text = _str2;
    
    UIButton *LoginButton = [[UIButton alloc] initWithFrame:CGRectMake(110, 470, 100, 40)];
    LoginButton.layer.cornerRadius = 5;
    LoginButton.layer.borderWidth = 0.5;
    LoginButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [LoginButton setTitle:@"登陆" forState:UIControlStateNormal];
    [LoginButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [LoginButton setTintColor:[UIColor whiteColor]];
    [LoginButton addTarget:self action:@selector(btnAction) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:LoginButton];
    
    UIButton *RegisterButton = [[UIButton alloc] initWithFrame:CGRectMake(230, 470, 100, 40)];
    RegisterButton.layer.cornerRadius = 5;
    RegisterButton.layer.borderWidth = 0.5;
    RegisterButton.layer.borderColor = [UIColor whiteColor].CGColor;
    [RegisterButton setTitle:@"注册" forState:UIControlStateNormal];
    [RegisterButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [RegisterButton setTintColor:[UIColor whiteColor]];
    [RegisterButton addTarget:self action:@selector(btnAction2) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:RegisterButton];
    
    // Do any additional setup after loading the view, typically from a nib.
}
- (void)btnAction{
    UITabBarController *tb = [[UITabBarController alloc] init];
    tb.tabBar.barTintColor = [UIColor redColor];
    if([_firsttTextField.text isEqualToString:@"04151001"] && [_seconddTextField.text isEqualToString:@"1234567890"]){
        self.view.window.rootViewController = tb;
        MineViewController *vc1 = [[MineViewController alloc] init];
        vc1.tabBarItem.title = @"我的";
        vc1.tabBarItem.image = [UIImage imageNamed:@"my_button_normal"];
        
        YourViewController *vc2 = [[YourViewController alloc] init];
        vc2.tabBarItem.title = @"你的";
        vc2.tabBarItem.image = [UIImage imageNamed:@"my_button_pressed"];
        
        UINavigationController *nav1 =  [[UINavigationController alloc] initWithRootViewController:vc1];
        
        UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:vc2];
        
        tb.viewControllers = @[nav1,nav2];
        [self.view.window makeKeyAndVisible];
    }
    else{
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"请重新确认账号和密码" message:@"" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault
                                                              handler:^(UIAlertAction * action) {
                                                                  //响应事件
                                                                  NSLog(@"action = %@", action);
                                                              }];
        [alert addAction:defaultAction];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
}

- (void)btnAction2{
    RegisterViewController *new = [[RegisterViewController alloc] init];
    self.view.window.rootViewController = new;
//    [self presentViewController:new animated:YES completion:nil];
}
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.firsttTextField resignFirstResponder];
    [self.seconddTextField resignFirstResponder];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
