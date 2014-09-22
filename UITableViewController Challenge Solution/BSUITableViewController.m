//
//  BSUITableViewController.m
//  UITableViewController Challenge Solution
//
//  Created by Bimal Shah on 22/09/2014.
//  Copyright (c) 2014 Organsiation. All rights reserved.
//

#import "BSUITableViewController.h"

@interface BSUITableViewController ()

@end

@implementation BSUITableViewController
//Problem 1: Using terminal, commit your changes utilizing version control. Create a github repository so that you have a remote location to save your code. Push your code up to github.

//Problem 2: Delete both the ViewController scene in your storyboard as well as your .h and .m ViewController class files in the project navigator. Make sure to move them to the trash but don't remove your references.
//
//Problem 3: Add a UITableViewController to your storyboard file and create a subclass of UITableViewController. Be sure to change the class of your UITableViewController in the identity inspector.
//
//Problem 4: Adjust the data source methods numberOfSectionsInTableView: and numberOfRowsInSection:. The TableView should display three sections:
//
//Section 0 should have 2 rows
//Section 1 should have 1 row
//Section 2 should have 3 rows

//Problem 5: Adjust the data source method cellForRowAtIndexPath:.
//
//Section 1's cells should display the text “I am in section 0”.
//Section 2's cells should display “another section”.
//Section 3's cells should display the word cell and the current row number. Use a format string and pass in NSIndexPath’s property row.
//Problem 6: Commit and push your changes up to github!
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
#warning Potentially incomplete method implementation.
    // Return the number of sections.
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
#warning Incomplete method implementation.
    // Return the number of rows in the section.
    if (section == 0) {
        return 2;
    }
    else if (section ==1)
    {
        return 1;
    }
    else
    {
        return 3;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell...
    if(indexPath.section == 0)
    {
        cell.textLabel.text = @"I am in section 0";
        cell.backgroundColor = [UIColor redColor];
    }
    else if (indexPath.section == 1)
    {
        cell.textLabel.text = @"another section";
        cell.backgroundColor = [UIColor blueColor];
    }
    else if (indexPath.section==2)
    {
        cell.textLabel.text = [NSString stringWithFormat:@"Cell %i", indexPath.row];
        cell.backgroundColor = [UIColor yellowColor];
    }
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
