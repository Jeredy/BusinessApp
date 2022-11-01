//
//  ServicesViewController.h
//  BusinessApp
//
//  Created by André Almeida on 2022-10-31.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface ServicesViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIImageView *detailImage;
@property (weak, nonatomic) IBOutlet UILabel *detailTitle;
@property (weak, nonatomic) IBOutlet UITextView *detailDescription;

@property (strong, nonatomic) NSArray *detailModal;

@end

NS_ASSUME_NONNULL_END
