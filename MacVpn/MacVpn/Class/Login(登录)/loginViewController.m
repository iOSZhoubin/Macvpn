//
//  loginViewController.m
//  MacVpn
//
//  Created by jumpapp1 on 2019/6/14.
//  Copyright © 2019年 zb. All rights reserved.
//

#import "loginViewController.h"
#import "FirstWindowController.h"

@interface loginViewController ()

//登录成功后显示的窗口
@property (strong,nonatomic) FirstWindowController *firstWc;
//帐户名
@property (weak) IBOutlet NSTextField *accountL;
//密码
@property (weak) IBOutlet NSSecureTextField *passwordL;
//ip地址
@property (weak) IBOutlet NSTextField *ipaddress;
//端口号
@property (weak) IBOutlet NSTextField *portL;

@end

@implementation loginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    self.firstWc = [[FirstWindowController alloc]initWithWindowNibName:@"FirstWindowController"];

}

- (IBAction)loginAction:(NSButton *)sender {
    
    [self.firstWc.window orderFront:nil];//显示要跳转的窗口

    [[self.firstWc window] center];//显示在屏幕中间

    [self.mainWC orderOut:nil];//关闭当前窗口
    
}


@end
