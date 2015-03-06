//
//  POITableViewController.m
//  poitable
//
//  Created by Rafael Souza Belchior da Silva on 02/03/15.
//  Copyright (c) 2015 Rafael Souza Belchior da Silva. All rights reserved.
//

#import "POITableViewController.h"
#import "POITableViewCell.h"
#import "GroupPOI.h"
#import "POIViewController.h"

@interface POITableViewController ()
{
    GroupPOI *poiData;
    
}

@end

@implementation POITableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    poiData=[GroupPOI instance];
    _contator=0;
    
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
-(void)viewDidAppear:(BOOL)animated{
    if ([poiData.poiItens objectForKey:poiData.key]!=poiData.poiItensArray) {
        [poiData.poiItens setObject:poiData.poiItensArray forKey:poiData.key];
    }
}
-(void)viewWillAppear:(BOOL)animated{
    _contator=0;
    
    [self.tableView reloadData];
}
#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
//#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
//#warning Incomplete method implementation.
    // Return the number of rows in the section.
    return [[poiData.poiItens objectForKey:poiData.key] count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    POITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"POICell" forIndexPath:indexPath];
    
    // Configure the cell...
    
    if(cell == nil){
        cell = [[POITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"POICell"];
    }
    
    NSString *poiNameString = [[[poiData.poiItens objectForKey:poiData.key] objectAtIndex:_contator] nome];
    NSString *poiAddressString = [[[poiData.poiItens  objectForKey:poiData.key] objectAtIndex: _contator] endereco];
    
    [[cell poiName] setText:poiNameString];
    [[cell poiAddress] setText:poiAddressString];
    _contator++;
    
    return cell;
}



// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}

//

// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [poiData.poiItens removeObjectForKey:poiData.key];
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}



// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}



// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}

//-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
//    if ([[segue identifier] isEqualToString:@"POIViewControler"]) {
////        NSIndexPath *indexPath = [self.tableView indexPathForSelectedRow];
//        POIViewController *table2=[segue destinationViewController];
//        table2.preview = _poiTable;
//    }
//}

#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation



@end
