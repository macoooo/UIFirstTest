//
//  MineViewController.m
//  考核
//
//  Created by 强淑婷 on 2018/8/6.
//  Copyright © 2018年 强淑婷. All rights reserved.
//

#import "MineViewController.h"
#import "FirstTableViewCell.h"
#import "SecondTableViewCell.h"
#import "ViewController.h"
@interface MineViewController ()<UITableViewDelegate, UITableViewDataSource>
@property (nonatomic ,strong)UITableView *tableView;
@end

@implementation MineViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"我的";
    self.navigationController.navigationBar.barTintColor = [UIColor redColor];
    self.navigationController.navigationBar.titleTextAttributes = [NSDictionary dictionaryWithObjectsAndKeys:[UIColor whiteColor],NSForegroundColorAttributeName,[UIFont systemFontOfSize:18], NSFontAttributeName, nil];
    
    UIButton *leftButton = [[UIButton alloc] initWithFrame:CGRectMake(5, 5, 40, 40)];
    [leftButton setImage:[UIImage imageNamed:@"箭头左"] forState:UIControlStateNormal];
    [leftButton setTitle:@"强淑婷" forState:UIControlStateNormal];
    [leftButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(pressLeft:) forControlEvents:UIControlEventTouchUpInside];
    
    UIBarButtonItem *leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
    //[leftBarButtonItem.customView addSubview:leftButton];
    self.navigationItem.leftBarButtonItem = leftBarButtonItem;
    
    [self creatTableView];
    // Do any additional setup after loading the view.
}
- (void)creatTableView{
    _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    _tableView.tableHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 0, CGFLOAT_MIN)];//CGFLOAT_MIN一个宏，
    
    [_tableView registerClass:[FirstTableViewCell class] forCellReuseIdentifier:@"cell1"];
    [_tableView registerClass:[SecondTableViewCell class] forCellReuseIdentifier:@"cell2"];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view addSubview:_tableView];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if(section == 0){
        return 1;
    }
    return 2;
}
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 2;
}
- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    return @" ";
}
- (NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section
{
    return @" ";
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
    return 230;
    }
    return 400;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 8;
}
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 8;
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    if(indexPath.section == 0){
        
        FirstTableViewCell *cell = [_tableView dequeueReusableCellWithIdentifier:@"cell1"];
        
            cell.label.text = @"强淑婷";
            cell.headImageView.image = [UIImage imageNamed:@"works_head"];
            cell.pictureImageView.image = [UIImage imageNamed:@"唯美2.jpg"];
        
        return cell;
    }
    else{
        
        SecondTableViewCell *cell2 = [_tableView dequeueReusableCellWithIdentifier:@"cell2"];
        
            
            cell2.headImageView.image = [UIImage imageNamed:@"share小明"];
            NSArray *array1 = [NSArray arrayWithObjects:@"mama",@"baba",nil];
            cell2.headLabel.text = array1[indexPath.row];
            cell2.firstLabel.text = array1[indexPath.row];;
            cell2.middleImageView.image = [UIImage imageNamed:@"xxxx"];
            cell2.secondLabel.text = array1[indexPath.row];
            cell2.thirdLabel.text = array1[indexPath.row];
            [cell2.loveBtn setImage:[UIImage imageNamed:@"爱心"] forState:UIControlStateNormal];
            [cell2.loveBtn setImage:[UIImage imageNamed:@"真心"] forState:UIControlStateSelected];
            [cell2.loveBtn addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
            [cell2.loveBtn setTitle:@"sda,lida, dsad" forState:UIControlStateNormal];
            [cell2.loveBtn setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
        //}
        return cell2;
    }
}
-(void)press:(UIButton *)btn{
    btn.selected = !btn.selected;
}
- (void)pressLeft:(UIButton *) btn{
    ViewController *new = [[ViewController alloc] init];
    [self presentViewController:new animated:YES completion:nil];
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
