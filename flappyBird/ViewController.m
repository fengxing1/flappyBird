//
//  ViewController.m
//  flappyBird
//
//  Created by dengwei on 16/1/22.
//  Copyright (c) 2016年 dengwei. All rights reserved.
//

#import "ViewController.h"

#define kRankButtonH    60
#define kRankButtonW    100
#define kRateButtonH    56
#define kRateButtonW    70
#define kStartButtonH   60
#define kStartButtonW   100
#define kMainTitleW     200
#define kMainTitleH     50
#define kScoreViewH     120
#define kScoreViewW     200

#define kScreenWidth [UIScreen mainScreen].bounds.size.width
#define kScreenHeight [UIScreen mainScreen].bounds.size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    [self setupUI];
}

-(void)setupUI{
    //开始底部图片
    UIImageView *bgView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, kScreenWidth, kScreenHeight)];
    bgView.image = [UIImage imageNamed:@"bg"];
    [self.view addSubview:bgView];
    
    //标题
    CGFloat titleX = (kScreenWidth - kMainTitleW) / 2;
    UIImageView *titleView = [[UIImageView alloc]initWithFrame:CGRectMake(titleX, 60, kMainTitleW, kMainTitleH)];
    titleView.image = [UIImage imageNamed:@"main"];
    [self.view addSubview:titleView];
    
    //分数
    CGFloat scoreViewX = (kScreenWidth - kScoreViewW) / 2;
    UIImageView *scoreView = [[UIImageView alloc]initWithFrame:CGRectMake(scoreViewX, 185, kScoreViewW, kScoreViewH)];
    scoreView.image = [UIImage imageNamed:@"score"];
    [self.view addSubview:scoreView];
    //显示分数
    CGFloat bestX = 200;
    CGFloat bestY = 265;
    CGFloat bestW = 40;
    CGFloat bestH = 20;
    UILabel *bestScore = [[UILabel alloc] initWithFrame:CGRectMake(bestX, bestY, bestW, bestH)];
    bestScore.text = @"0";
    bestScore.font = [UIFont systemFontOfSize:16];
    bestScore.textAlignment = NSTextAlignmentRight;
    bestScore.textColor = [UIColor orangeColor];
    [self.view addSubview:bestScore];
    
    CGFloat scoreX = 200;
    CGFloat scoreY = 220;
    CGFloat scoreW = 40;
    CGFloat scoreH = 20;
    UILabel *score = [[UILabel alloc] initWithFrame:CGRectMake(scoreX, scoreY, scoreW, scoreH)];
    score.text = @"0";
    score.font = [UIFont systemFontOfSize:16];
    score.textAlignment = NSTextAlignmentRight;
    score.textColor = [UIColor orangeColor];
    [self.view addSubview:score];
    
    //birds动画
    NSMutableArray *birds = [[NSMutableArray alloc]init];
    UIImageView *birdViews = [[UIImageView alloc]initWithFrame:CGRectMake(140, 135, 40, 32)];
    NSArray *array = @[@"bird1", @"bird2", @"bird3"];
    for (NSInteger i = 0; i < array.count; i++) {
        UIImage *bird = [UIImage imageNamed:array[i]];
        [birds addObject:bird];
    }
    birdViews.animationImages = birds;
    birdViews.animationDuration = 1;
    birdViews.animationRepeatCount = 0;
    [birdViews startAnimating];
    [self.view addSubview:birdViews];
    
    //创建速度按钮
    UIButton *rateButton = [UIButton buttonWithType:UIButtonTypeCustom];
    CGFloat rateX = (kScreenWidth - kRateButtonW) / 2;
    rateButton.frame = CGRectMake(rateX, 335, kRateButtonW, kRateButtonH);
    [rateButton setImage:[UIImage imageNamed:@"rate"] forState:UIControlStateNormal];
    [self.view addSubview:rateButton];
    
    //创建开始按钮
    UIButton *startButton = [UIButton buttonWithType:UIButtonTypeCustom];
    startButton.frame = CGRectMake(50, 410, kStartButtonW, kStartButtonH);
    [startButton setImage:[UIImage imageNamed:@"start"] forState:UIControlStateNormal];
    [self.view addSubview:startButton];
    
    //创建排行榜按钮
    UIButton *rankButton = [UIButton buttonWithType:UIButtonTypeCustom];
    rankButton.frame = CGRectMake(170, 410, kRankButtonW, kRankButtonH);
    [rankButton setImage:[UIImage imageNamed:@"rank"] forState:UIControlStateNormal];
    [self.view addSubview:rankButton];
    
    //点击事件
    [startButton addTarget:self action:@selector(onStartButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [rankButton addTarget:self action:@selector(onRankButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [rateButton addTarget:self action:@selector(onRateButtonClick) forControlEvents:UIControlEventTouchUpInside];
}

#pragma mark - 按钮响应方法
#pragma mark 点击速度
-(void)onRateButtonClick{
    NSLog(@"rate");
}

#pragma mark 点击开始
-(void)onStartButtonClick{
    NSLog(@"start");
}

#pragma mark 点击排行榜
-(void)onRankButtonClick{
    NSLog(@"rank");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
