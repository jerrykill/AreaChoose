//
//  ViewController.m
//  AreaChooseView
//
//  Created by imac on 16/8/12.
//  Copyright © 2016年 imac. All rights reserved.
//

#import "ViewController.h"
#import "AreaChooseView.h"
#import "AddressModel.h"
@interface ViewController ()

@property (strong,nonatomic) UIButton*testBtn;

@property (strong,nonatomic) AreaChooseView *chooseV;

@property (strong,nonatomic) AddressModel *dataModel;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view .backgroundColor = [UIColor whiteColor];
    _testBtn = [[UIButton alloc]initWithFrame:CGRectMake(30, 200, __kWidth-60, 40)];
    [self.view addSubview:_testBtn];
    _testBtn.backgroundColor = [UIColor whiteColor];
    [_testBtn setTitle:@"地区选择" forState:BtnNormal];
    [_testBtn setTitleColor:[UIColor lightGrayColor] forState:BtnNormal];
    _testBtn.layer.cornerRadius = 20;
    _testBtn.layer.borderWidth = 1;
    _testBtn.layer.borderColor = [UIColor greenColor].CGColor;

    [_testBtn addTarget:self action:@selector(chooseArea:) forControlEvents:BtnTouchUpInside];
}

-(void)chooseArea:(UIButton *)sender{
    [self chooseV];
}


-(AreaChooseView *)chooseV{
    if (!_chooseV) {
        _chooseV = [[AreaChooseView alloc]initWithAreaFrame:CGRectMake(0, __kHeight-400, __kWidth, 400)];
        [self.view addSubview:_chooseV];
        WK(weakSelf)
        _chooseV.backgroundColor = LH_RGBCOLOR(220, 220, 220);
        _chooseV.returntextfileBlock = ^(NSString *data){
            [weakSelf.testBtn setTitle:data forState:BtnNormal];
            NSArray *arr =[data componentsSeparatedByString:@" "];
            weakSelf.dataModel.Province=arr[0];
            weakSelf.dataModel.city = arr[1];
            weakSelf.dataModel.area = arr[2];
        };
    }
    return _chooseV;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
