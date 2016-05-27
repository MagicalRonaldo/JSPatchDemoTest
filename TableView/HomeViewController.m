//
//  FirstViewController.m
//  Tel
//
//  Created by xubing on 13-12-20.
//  Copyright (c) 2013年 xubing. All rights reserved.
//

#import "HomeViewController.h"
#import "ListTableViewCell.h"
#import "FirstWeekViewController.h"

@interface HomeViewController ()

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) NSArray *sectionArray;
@property (nonatomic, strong) NSArray *cellTitleArray;
@property (nonatomic, strong) NSArray *paramArray;

@end

@implementation HomeViewController

- (UITableView *)tableView
{
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, self.view.frame.size.height) style:UITableViewStylePlain];
        _tableView.dataSource = self;
        _tableView.delegate = self;
        _tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
        _tableView.scrollEnabled = YES;
    }
    return _tableView;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
//    if (self.vcTitle && self.vcTitle.length > 0) {
//        self.navigationItem.title = self.vcTitle;
//    } else {
        self.navigationItem.title = @"作业本";
//    }
    self.sectionArray = @[@5];
    self.cellTitleArray = @[@[@"第1次随堂", @"第2次随堂", @"第3次随堂", @"第4次随堂", @"第5次随堂"]];
    
    self.paramArray = @[@"第1次随堂", @"第2次随堂", @"第3次随堂", @"第4次随堂"];
    
    [self.view addSubview:self.tableView];
	// Do any additional setup after loading the view, typically from a nib.
}

#pragma mark - delegate

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return self.sectionArray.count;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[self.sectionArray objectAtIndex:section] integerValue];
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    return 20;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section
{
    return 1;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section
{
    UIView *view=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 1)];
    view.backgroundColor = [UIColor grayColor];
    return view ;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *identifier = @"identifierCell";
    ListTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (cell == nil) {
        cell = [[ListTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"identifierCell"];
    }
    
    NSString *cellString = [[self.cellTitleArray objectAtIndex:indexPath.section] objectAtIndex:indexPath.row];
    
    NSDictionary *celldata = @{@"title":cellString};
    [cell configWithData:celldata];
    return cell;
}

//- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath
//{
////    if (indexPath.row % 2 == 0) {
////        cell.backgroundColor = [UIColor redColor];
////    } else {
////        cell.backgroundColor = [UIColor blueColor];
////    }
//}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    FirstWeekViewController *firstWeekVC = [[FirstWeekViewController alloc] init];
//    firstWeekVC.vcTitle = self.paramArray[indexPath.row];
    
    [firstWeekVC setTitle:self.paramArray[indexPath.row]];
    [self.navigationController pushViewController:firstWeekVC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
