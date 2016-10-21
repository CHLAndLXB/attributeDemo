//
//  SecondViewController.m
//  学习之富文本NSAttributedString
//
//  Created by huochaihy on 16/10/17.
//  Copyright © 2016年 CHL. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()<UITextViewDelegate>

@property (weak, nonatomic) IBOutlet UILabel *label11;
@property (weak, nonatomic) IBOutlet UITextView *textView;
@property (weak, nonatomic) IBOutlet UILabel *label13;
@property (weak, nonatomic) IBOutlet UILabel *label14;
@property (weak, nonatomic) IBOutlet UILabel *label15;
@property (weak, nonatomic) IBOutlet UILabel *label16;
@property (weak, nonatomic) IBOutlet UILabel *label17;
@property (weak, nonatomic) IBOutlet UILabel *label18;

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
//    书写方向
    //    The values of the NSNumber objects should be 0, 1, 2, or 3, for LRE, RLE, LRO, or RLO respectively, and combinations of leftToRight and rightToLeft with NSTextWritingDirectionEmbedding or NSTextWritingDirectionOverride, as shown in Table 1.
    //    NSWritingDirectionLeftToRight | NSTextWritingDirectionEmbedding 1
    //    NSWritingDirectionRightToLeft | NSTextWritingDirectionEmbedding 2
    //    NSWritingDirectionLeftToRight | NSTextWritingDirectionOverride  3
    //    NSWritingDirectionRightToLeft | NSTextWritingDirectionOverride  4
//    只支持0 横向
    NSString * string10 = @"是不是傻,是不是傻";
    NSMutableAttributedString * mutAttributedString10  = [[NSMutableAttributedString alloc]init];
    NSAttributedString * attributedString28 = [[NSAttributedString alloc]initWithString:[string10 substringWithRange:NSMakeRange(0, 4)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor],NSWritingDirectionAttributeName:@[@3]}];
    
    NSAttributedString * attributedString29 = [[NSAttributedString alloc]initWithString:[string10 substringWithRange:NSMakeRange(4, 5)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor]}];
    [mutAttributedString10 appendAttributedString:attributedString28];
     [mutAttributedString10 appendAttributedString:attributedString29];
    self.label11.numberOfLines = 0;
    self.label11.attributedText = mutAttributedString10;

//    文本超链接
    //  在 UILabel 和 UITextField 中是无法使用该属性的。更准确点说是在UILabel 和 UITextField 中无法实现点击链接启动浏览器打开一个URL地址，因为在此过程中用到了一个代理函数。只能用在 UITextView 中
    
    self.textView.delegate = self;
    self.textView.editable = NO;
    NSString * string11 = @"打开,你懂得";
    NSMutableAttributedString * mutAttributedString11  = [[NSMutableAttributedString alloc]init];
    NSAttributedString * attributedString31 = [[NSAttributedString alloc]initWithString:[string11 substringWithRange:NSMakeRange(0, 3)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor]}];
    NSAttributedString * attributedString30 = [[NSAttributedString alloc]initWithString:[string11 substringWithRange:NSMakeRange(3, 3)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor],NSLinkAttributeName:[NSURL URLWithString:@"http://www.baidu.com"]}];
    [mutAttributedString11 appendAttributedString:attributedString31];
    [mutAttributedString11 appendAttributedString:attributedString30];
    self.textView.attributedText = mutAttributedString11;
    
//    文本附件  插入图片什么的
    NSString * string12 = @"是不是图片,再来一张";
    NSMutableAttributedString * mutAttributedString12  = [[NSMutableAttributedString alloc]initWithString:string12 attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:17.0f]}];
    NSTextAttachment * textAttachment1 = [[NSTextAttachment alloc]initWithData:nil ofType:nil];
    textAttachment1.image = [UIImage imageNamed:@"3S(P3C}(QR07_`S8`6YUUKA.gif"];
    textAttachment1.bounds = CGRectMake(0, 0, 40, 30);
    
    NSTextAttachment * textAttachment2 = [[NSTextAttachment alloc]initWithData:nil ofType:nil];
    textAttachment2.image = [UIImage imageNamed:@")U1FJW4{8[0)DSY%4ZG(MHE.jpg"];
    textAttachment2.bounds = CGRectMake(0, 0, 40, 30);
    
    NSAttributedString *string8 = [NSAttributedString attributedStringWithAttachment:textAttachment1];
    NSAttributedString *string9 = [NSAttributedString attributedStringWithAttachment:textAttachment2];
    [mutAttributedString12 insertAttributedString:string8 atIndex:5];
    [mutAttributedString12 insertAttributedString:string9 atIndex:11];
    self.label13.attributedText = mutAttributedString12;
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange
{
    
    NSLog(@"点击链接跳转到我这里");
    return YES;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
