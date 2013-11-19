//
//  LRUViewController.m
//  LRUAlgorithm
//
//  Created by Omar Gudino on 11/4/13.
//  Copyright (c) 2013 Omar Gudino. All rights reserved.
//

#import "LRUViewController.h"
#import "LRUMatrix.h"

@interface LRUViewController ()
@property (weak, nonatomic) IBOutlet UITextField *numberTextField;
@property (weak, nonatomic) IBOutlet UITextView *matrixTextView;
@property (strong, nonatomic) LRUMatrix *matrix;

@end

@implementation LRUViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    //Inicializar e imprimir matriz
    self.matrix = [LRUMatrix matrixArrayWithSections];
    self.matrixTextView.text = [self.matrix printMatrix];
}

- (IBAction)pushedButton:(id)sender
{
    NSInteger number = [self.numberTextField.text integerValue];
    NSString *section = @"1";
    NSString *row = @"0";
    
    //x
    for (int i = 0; i<4; i++) {
        [self.matrix setObject:section inSection:number row:i];
        
    }
    
    //y
    for (int i = 0; i<4; i++) {
        [self.matrix setObject:row inSection:i row:number];
    }
    
    //Imprimir la nueva matriz
    self.matrixTextView.text = [self.matrix printMatrix];
    
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.numberTextField resignFirstResponder];
}

@end