//
//  ViewController.m
//  AnimationContainerView
//
//  Created by qinglinyou on 2018/3/5.
//  Copyright © 2018年 qinglinyou. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (strong, nonatomic) UIView *animationContainerView;

@property (strong, nonatomic) UIImageView *imageView;

@property (strong, nonatomic) UIView *view1;
@property (strong, nonatomic) UIView *view2;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
//////////////////////////////   最初的练习
//    self.animationContainerView = [[UIView alloc]initWithFrame:self.view.bounds];
//    self.animationContainerView.backgroundColor = [UIColor orangeColor];
//    [self.view addSubview:self.animationContainerView];

//////////////////////////////   练习转换时隐藏
//    self.imageView = [[UIImageView alloc]init];
//    self.imageView.image = [UIImage imageNamed:@"banner"];
//    [self.imageView sizeToFit];
//    self.imageView.backgroundColor = [UIColor grayColor];
//    self.imageView.center = self.animationContainerView.center;
//
//    [self.animationContainerView addSubview:self.imageView];
    
    
#pragma mark -- 两个视图的转换
    self.view1 = [[UIView alloc]initWithFrame:self.view.bounds];
    self.view1.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:self.view1];
    
    self.view2 = [[UIView alloc]initWithFrame:self.view.bounds];
    self.view2.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.view2];
    
}


- (void)viewDidAppear:(BOOL)animated{
    [super viewDidAppear:animated];

    
/**   最初的练习
    UIImageView *imageView = [[UIImageView alloc]init];
    imageView.image = [UIImage imageNamed:@"banner"];
    [imageView sizeToFit];
    imageView.backgroundColor = [UIColor grayColor];
    imageView.center = self.animationContainerView.center;
    
    [self.animationContainerView addSubview:imageView];

    [UIView transitionWithView:self.animationContainerView duration:0.33 options:UIViewAnimationOptionCurveEaseOut|UIViewAnimationOptionTransitionFlipFromBottom animations:^{
        [self.animationContainerView addSubview:self.imageView];
    } completion:^(BOOL finished){
        
        [self.imageView removeFromSuperview];
    }];
  */


#pragma mark --  练习转换时隐藏
//////////////////////////////   练习转换时隐藏
//    [UIView transitionWithView:self.animationContainerView duration:0.33 options:UIViewAnimationOptionCurveEaseOut|UIViewAnimationOptionTransitionFlipFromBottom animations:^{
//        self.imageView.hidden = YES;
//    } completion:nil];

    
#pragma mark -- 两个视图的转换
    
    [UIView transitionFromView:self.view1 toView:self.view2 duration:0.33 options:UIViewAnimationOptionTransitionFlipFromTop completion:nil];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
