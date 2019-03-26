//
//  DetailViewController.m
//  1.ScrollViewPropertyDemo
//
//  Created by macleo on 2019/3/25.
//  Copyright © 2019 www.iphonetrain.com 无限互联3G开发培训中心. All rights reserved.
//

#import "DetailViewController.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //用代码创建一个UIButton，并将之添加到uiz上
    UIButton  *button_alert = [[UIButton alloc] init];
    button_alert.frame = CGRectMake(170, 200, 170, 30);
    [button_alert setTitle:@"start" forState:UIControlStateNormal];
    button_alert.titleLabel.textColor = [UIColor blackColor];
    //判断按钮是否选中
    //button.selected=YES;
    //[button_alert setTitle:@"被选中" forState:UIControlStateSelected];
    [button_alert setTitleColor:[UIColor blackColor] forState:UIControlStateSelected];
    [button_alert setBackgroundImage:[UIImage imageNamed:@"bg.png"] forState:UIControlStateNormal]; //给图片设置一个背景图
    //设置圆角
    button_alert.layer.cornerRadius=50;
    button_alert.layer.masksToBounds=YES;
    //监听
    [button_alert addTarget:self action:@selector(text:) forControlEvents:UIControlEventTouchUpInside];
    //[button_alert addTarget:self action:@selector(text1:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button_alert];
}

-(void)text:(UIButton *)button{
//    if (button.selected==NO) {
//        button.selected=YES;
//
//    }else{
//        button.selected=NO;
//    }
//    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
    [self.navigationController popViewControllerAnimated:YES];
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
