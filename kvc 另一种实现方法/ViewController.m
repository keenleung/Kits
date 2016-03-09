//
//  ViewController.m
//  kvc 另一种实现方法
//
//  Created by Apple on 16/3/8.
//  Copyright © 2016年 Apple. All rights reserved.
//

#import "ViewController.h"
#import "Html.h"

@interface ViewController ()<UITableViewDataSource, UITableViewDelegate>

// 组件
@property (nonatomic, weak) UITableView *tableView;

// json 数据数组
@property (nonatomic, strong) NSArray *htmls;

@end

@implementation ViewController

- (NSArray *)htmls{
    if (!_htmls) {
        _htmls = [Html htmlFromLocalJsonFile];
    }
    return _htmls;
}


- (void)viewDidLoad {
    [super viewDidLoad];


    UITableView *tableView = [[UITableView alloc] init];
    self.tableView = tableView;

    tableView.frame = self.view.bounds;
    tableView.delegate = self;
    tableView.dataSource = self;
    [self.view addSubview:tableView];

}


#pragma mark - UITableView 数据源和代理方法
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.htmls.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{

    static NSString *reuseId = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseId];
    }

    Html *html = self.htmls[indexPath.row];
    cell.textLabel.text = html.title;
    cell.detailTextLabel.text = html.html;

    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 100, 40)];
    label.text = html.ID;

    cell.accessoryView = label;

    return cell;
}

- (BOOL)prefersStatusBarHidden{
    return YES;
}

@end
