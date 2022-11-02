//
//  PortfolioCollectionViewController.m
//  BusinessApp
//
//  Created by André Almeida on 2022-11-02.
//

#import "PortfolioCollectionViewController.h"
#import "PortfolioCollectionViewCell.h"

@interface PortfolioCollectionViewController ()

@end

@implementation PortfolioCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];
    
    array = @[@"Image1", @"Image2", @"Image3", @"Image4", @"Image5"];
    
    self.collectionView.backgroundView = [[UIImageView alloc] initWithImage:[UIImage imageNamed: @"Background"]];
    
    float width = [[UIScreen mainScreen] bounds].size.width;
    
    NSLog(@"DEBUG: WIDTH: %f", width);
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return array.count;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    PortfolioCollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:@"Cell" forIndexPath:indexPath];
    
    // Configure the cell
    
    cell.cellImageView.image = [UIImage imageNamed:array[indexPath.row]];
    
    cell.cellImageView.layer.cornerRadius = 5;
    cell.cellImageView.layer.borderWidth = 5;
    [[cell.cellImageView layer] setBorderColor: [UIColor whiteColor].CGColor];
    
    return cell;
}

-(CGSize)collectionView:(UICollectionView *) collectionView layout:(nonnull UICollectionViewLayout *)collectionViewLayout sizeForItemAtIndexPath:(nonnull NSIndexPath *)indexPath {
    
    CGRect screenSizeRect = [[UIScreen mainScreen] bounds];
    CGFloat screenWidth = screenSizeRect.size.width;
    
    
    float heightCell = 145;
    float widthCell = 172;
    
    //iPhone x 6, 6s, 7, 8
    if (screenWidth == 375) {
        heightCell = 145;
        widthCell = 172;
    }
    
    //iPhone 6+, 6s+, 7+, 8+
    if (screenWidth == 414) {
        heightCell = 145;
        widthCell = 192;
    }
    
    //iPhone every other
    if (screenWidth == 320) {
        heightCell = 145;
        widthCell = 145;
    }
    
    return CGSizeMake(widthCell, heightCell);
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
