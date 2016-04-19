//
//  TableViewController.m
//  labelMargin
//
//  Created by chen xiaosong on 16/4/19.
//  Copyright © 2016年 chen xiaosong. All rights reserved.
//

#import "TableViewController.h"

#import "TableViewCell.h"

@interface TableViewController ()
{
    NSArray *textArr;
}
@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
    self.tableView.estimatedRowHeight = 200;
    
    textArr = @[
                @"凤凰体育讯 巴萨在战绩上出现了巨大的滑坡，最近的5场比赛输掉了4场，而内马尔的状态也非常低迷，据西班牙《转会网》消息，巴萨高层计划套现内少，转而在转会市场上换购四名球星，分别是马金尼奥斯、博格巴、贝莱林和诺里托。",
                @"目前巴萨高层思考的一个解决方案是，通过出售内马尔来筹措转会资金。其实内少在近期的状态的确非常一般，在9、10和11月份，内少打入了18个球，可是在2月、3月和4月，巴西人仅仅打入6球，效率暴跌。目前内马尔的合同违约金达到1.9亿欧元，不过很多豪门都愿意为他支付这个数的转会费，包括曼联，曼城和巴黎圣日耳曼。"
                ];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return textArr.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    TableViewCell *cell = [[[NSBundle mainBundle] loadNibNamed:@"TableViewCell" owner:self options:nil] lastObject];
    cell.myLabel.text = textArr[indexPath.row];
    
    return cell;
}

@end
