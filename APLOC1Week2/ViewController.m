//
//  ViewController.m
//  APLOC1Week2
//
//  Created by Brent Marohnic on 11/29/12.
//  Copyright (c) 2012 Brent Marohnic. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)viewWillAppear:(BOOL)animated
{
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Create an array to hold a list of five items mentioned in the book.
    NSArray *arrList = [[NSArray alloc] initWithObjects: @"Kings", @"Queens", @"sorcerers", @"soldiers", @"assassins", nil];
    
    // Create one modifiable string that will eventually hold the concatenated terms located in arrList.
    NSMutableString *strList = [[NSMutableString alloc] initWithString:@""];
    
    // Loop thru the contents of arrList and concatenate each term into one string that resides within strList.
    for (int i = 0; i < [arrList count]; i++)
    {
        [strList appendString: arrList[i]];
        if (i < ([arrList count] - 1))
        {
            [strList appendString: @", "];
        }
    }
    
    // The following nine blocks of initialization and if statements are used to generate the layout and appearance.
    lblTitle = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 0.0f, 320.0f, 20.0f)];
    
    if (lblTitle != nil)
    {
        lblTitle.backgroundColor = [UIColor blackColor];
        lblTitle.text = @"A Game of Thrones";
        lblTitle.textAlignment = NSTextAlignmentCenter;
        lblTitle.textColor = [UIColor lightGrayColor];
    }
    
    lblAuthor1 = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 25.0f, 100.0f, 20.0f)];
    
    if (lblAuthor1 != nil)
    {
        lblAuthor1.backgroundColor = [UIColor darkGrayColor];
        lblAuthor1.text = @"Author:";
        lblAuthor1.textAlignment = NSTextAlignmentRight;
        lblAuthor1.textColor = [UIColor magentaColor];
    }

    lblAuthor2 = [[UILabel alloc] initWithFrame: CGRectMake(100.0f, 25.0f, 220.0f, 20.0f)];
    
    if (lblAuthor2 != nil)
    {
        lblAuthor2.backgroundColor = [UIColor lightGrayColor];
        lblAuthor2.text = @"George R. R. Martin";
        lblAuthor2.textAlignment = NSTextAlignmentLeft;
        lblAuthor2.textColor = [UIColor greenColor];
    }

    
    lblPublished1 = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 50.0f, 100.0f, 20.0f)];
    
    if (lblPublished1 != nil)
    {
        lblPublished1.backgroundColor = [UIColor grayColor];
        lblPublished1.text = @"Published:";
        lblPublished1.textAlignment = NSTextAlignmentRight;
        lblPublished1.textColor = [UIColor purpleColor];
    }

    lblPublished2 = [[UILabel alloc] initWithFrame: CGRectMake(100.0f, 50.0f, 220.0f, 20.0f)];
    
    if (lblPublished2 != nil)
    {
        lblPublished2.backgroundColor = [UIColor redColor];
        lblPublished2.text = @"August 1, 1996";
        lblPublished2.textAlignment = NSTextAlignmentLeft;
        lblPublished2.textColor = [UIColor blackColor];
    }

    
    lblSummary1 = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 75.0f, 100.0f, 20.0f)];
    
    if (lblSummary1 != nil)
    {
        lblSummary1.backgroundColor = [UIColor greenColor];
        lblSummary1.text = @"Summary:";
        lblSummary1.textAlignment = NSTextAlignmentLeft;
        lblSummary1.textColor = [UIColor brownColor];
    }

    
    lblSummary2 = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 100.0f, 320.0f, 140.0f)];
    
    if (lblSummary2 != nil)
    {
        lblSummary2.backgroundColor = [UIColor blueColor];
        lblSummary2.text = @"A family known as the Starks of Winterfell struggle to survive under the crushing force of a nightmarish hoard amassing to the north of their lands and the deceitful betrayals playing out in the capital city to their south.";
        lblSummary2.textAlignment = NSTextAlignmentCenter;
        lblSummary2.numberOfLines = 6;
        lblSummary2.textColor = [UIColor whiteColor];
    }

    
    lblList1 = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 245.0f, 100.0f, 20.0f)];
    
    if (lblList1 != nil)
    {
        lblList1.backgroundColor = [UIColor cyanColor];
        lblList1.text = @"List of Items:";
        lblList1.textAlignment = NSTextAlignmentLeft;
        lblList1.textColor = [UIColor redColor];
    }

    
    lblList2 = [[UILabel alloc] initWithFrame: CGRectMake(0.0f, 270.0f, 320.0f, 40.0f)];
    
    if (lblList2 != nil)
    {
        lblList2.backgroundColor = [UIColor yellowColor];
        lblList2.text = strList;
        lblList2.textAlignment = NSTextAlignmentCenter;
        lblList2.numberOfLines = 6;
        lblList2.textColor = [UIColor darkGrayColor];
    }

    
    // Display each of the subviews generated above.
    [self.view addSubview:lblTitle];
    [self.view addSubview:lblAuthor1];
    [self.view addSubview:lblAuthor2];
    [self.view addSubview:lblPublished1];
    [self.view addSubview:lblPublished2];
    [self.view addSubview:lblSummary1];
    [self.view addSubview:lblSummary2];
    [self.view addSubview:lblList1];
    [self.view addSubview:lblList2];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
