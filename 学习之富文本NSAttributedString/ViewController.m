//
//  ViewController.m
//  学习之富文本NSAttributedString
//
//  Created by huochaihy on 16/10/17.
//  Copyright © 2016年 CHL. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UILabel *label1;
@property (weak, nonatomic) IBOutlet UILabel *label2;
@property (weak, nonatomic) IBOutlet UILabel *label3;
@property (weak, nonatomic) IBOutlet UILabel *label4;
@property (weak, nonatomic) IBOutlet UILabel *label5;
@property (weak, nonatomic) IBOutlet UILabel *label6;
@property (weak, nonatomic) IBOutlet UILabel *label7;
@property (weak, nonatomic) IBOutlet UILabel *label8;
@property (weak, nonatomic) IBOutlet UILabel *label9;
@property (weak, nonatomic) IBOutlet UILabel *label10;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    第一种  简单的展示
    NSString * string  = @"就是要装逼！哼";
    NSMutableAttributedString * mutAttributedString1  = [[NSMutableAttributedString alloc]init];
    NSAttributedString * attributedString1 = [[NSAttributedString alloc]initWithString:[string substringWithRange:NSMakeRange(0, 2)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:10],NSForegroundColorAttributeName:[UIColor yellowColor]}];
    [mutAttributedString1 appendAttributedString:attributedString1];
    
    NSAttributedString * attributedString2 = [[NSAttributedString alloc]initWithString:[string substringWithRange:NSMakeRange(2, 4)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor],NSBackgroundColorAttributeName:[UIColor greenColor]}];
    [mutAttributedString1 appendAttributedString:attributedString2];
    
    NSAttributedString * attributedString3 = [[NSAttributedString alloc]initWithString:[string substringWithRange:NSMakeRange(6, 1)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:15],NSForegroundColorAttributeName:[UIColor redColor],NSBackgroundColorAttributeName:[UIColor grayColor]}];
    [mutAttributedString1 appendAttributedString:attributedString3];
    self.label1.attributedText = mutAttributedString1;
    
//    连体艺术字
     self.label2.attributedText = [[NSAttributedString alloc] initWithString:@"flush and fily" attributes:@{NSLigatureAttributeName : [NSNumber numberWithInt:1],NSFontAttributeName : [UIFont fontWithName:@"futura" size:30]}];
    
//    字体间距
    NSString * string1 = @"ABCDEFGHIJKLMNO";
    NSMutableAttributedString * mutAttributedString2  = [[NSMutableAttributedString alloc]init];
    NSAttributedString * attributedString4 = [[NSAttributedString alloc]initWithString:[string1 substringWithRange:NSMakeRange(0, 4)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:15],NSForegroundColorAttributeName:[UIColor redColor],NSKernAttributeName:[NSNumber numberWithInt:-4]}];
    [mutAttributedString2 appendAttributedString:attributedString4];
    
    NSAttributedString * attributedString5 = [[NSAttributedString alloc]initWithString:[string1 substringWithRange:NSMakeRange(4, 4)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:15],NSForegroundColorAttributeName:[UIColor yellowColor],NSKernAttributeName:[NSNumber numberWithInt:0]}];
    [mutAttributedString2 appendAttributedString:attributedString5];
    
    NSAttributedString * attributedString6 = [[NSAttributedString alloc]initWithString:[string1 substringWithRange:NSMakeRange(8, 7)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:15],NSForegroundColorAttributeName:[UIColor greenColor],NSKernAttributeName:[NSNumber numberWithInt:10]}];
    [mutAttributedString2 appendAttributedString:attributedString6];
    
    self.label3.attributedText = mutAttributedString2;
    
    
    
//  删除线 or 下划线
//    删除线
    //    typedef NS_ENUM(NSInteger, NSUnderlineStyle) {
    //        NSUnderlineStyleNone                                    = 0x00, 没有
    //        NSUnderlineStyleSingle                                  = 0x01, 单根
    //        NSUnderlineStyleThick NS_ENUM_AVAILABLE(10_0, 7_0)      = 0x02, 单粗
    //        NSUnderlineStyleDouble NS_ENUM_AVAILABLE(10_0, 7_0)             双根
    
    NSString * string3 = @"只要998,就能让你爽到不能呼吸,哥哥这么帅,我倒贴9998";
    NSMutableAttributedString * mutAttributedString3  = [[NSMutableAttributedString alloc]init];
//  删除线只要998
    NSAttributedString * attributedString7 = [[NSAttributedString alloc]initWithString:[string3 substringWithRange:NSMakeRange(0, 5)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:15],NSForegroundColorAttributeName:[UIColor greenColor],NSStrikethroughStyleAttributeName:@(NSUnderlineStyleSingle),NSStrikethroughColorAttributeName:[UIColor redColor]}];
    NSAttributedString * attributedString8 = [[NSAttributedString alloc]initWithString:[string3 substringWithRange:NSMakeRange(17, 13)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:15],NSForegroundColorAttributeName:[UIColor redColor],NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle),NSUnderlineColorAttributeName:[UIColor blueColor]}];
     NSAttributedString * attributedString9 = [[NSAttributedString alloc]initWithString:[string3 substringWithRange:NSMakeRange(5, 12)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:20],NSForegroundColorAttributeName:[UIColor yellowColor]}];
    [mutAttributedString3 appendAttributedString:attributedString7];
    [mutAttributedString3 appendAttributedString:attributedString9];
    [mutAttributedString3 appendAttributedString:attributedString8];
    self.label4.attributedText = mutAttributedString3;
    self.label4.numberOfLines = 0;
    
    
//  文字笔画宽度
    NSString * string4 = @"Hello Gril Boy";
    NSMutableAttributedString * mutAttributedString4  = [[NSMutableAttributedString alloc]init];
    NSAttributedString * attributedString10 = [[NSAttributedString alloc]initWithString:[string4 substringWithRange:NSMakeRange(0, 5)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:30],NSForegroundColorAttributeName:[UIColor redColor],NSStrokeWidthAttributeName:@5,NSStrokeColorAttributeName:[UIColor yellowColor]}];
    NSAttributedString * attributedString11 = [[NSAttributedString alloc]initWithString:[string4 substringWithRange:NSMakeRange(5, 5)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:30],NSForegroundColorAttributeName:[UIColor redColor],NSStrokeWidthAttributeName:@0,NSStrokeColorAttributeName:[UIColor greenColor]}];
    NSAttributedString * attributedString12 = [[NSAttributedString alloc]initWithString:[string4 substringWithRange:NSMakeRange(10, 4)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:30],NSForegroundColorAttributeName:[UIColor redColor],NSStrokeWidthAttributeName:@-5,NSStrokeColorAttributeName:[UIColor redColor]}];
    [mutAttributedString4 appendAttributedString:attributedString10];
    [mutAttributedString4 appendAttributedString:attributedString11];
    [mutAttributedString4 appendAttributedString:attributedString12];
    self.label5.attributedText = mutAttributedString4;
    
//  阴影
    NSString * string5 = @"来啊 来啊";
    NSMutableAttributedString * mutAttributedString5  = [[NSMutableAttributedString alloc]init];
    NSShadow * shadow = [[NSShadow alloc]init];
    shadow.shadowColor = [UIColor blueColor];
    shadow.shadowOffset = CGSizeMake(1, 5);
    shadow.shadowBlurRadius = 5.0f; // 模糊度
    NSAttributedString * attributedString13 = [[NSAttributedString alloc]initWithString:[string5 substringWithRange:NSMakeRange(0, 5)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:30],NSForegroundColorAttributeName:[UIColor redColor],NSShadowAttributeName:shadow}];
    [mutAttributedString5 appendAttributedString:attributedString13];
    self.label6.attributedText = mutAttributedString5;
//  图版印刷
    NSString * string6 = @"蓝瘦香菇";
    NSMutableAttributedString * mutAttributedString6  = [[NSMutableAttributedString alloc]init];
    NSAttributedString * attributedString14 = [[NSAttributedString alloc]initWithString:[string6 substringWithRange:NSMakeRange(0, 4)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:30],NSForegroundColorAttributeName:[UIColor redColor],NSTextEffectAttributeName:NSTextEffectLetterpressStyle}];
    [mutAttributedString6 appendAttributedString:attributedString14];
    self.label7.attributedText = mutAttributedString6;
    
    NSString * string7 = @"￥9.98 帅锅 ￥0.998";
    NSMutableAttributedString * mutAttributedString7  = [[NSMutableAttributedString alloc]init];
//    基线为0
    NSAttributedString * attributedString15 = [[NSAttributedString alloc]initWithString:[string7 substringWithRange:NSMakeRange(0, 1)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor blackColor],NSBaselineOffsetAttributeName:@0}];
    NSAttributedString * attributedString16 = [[NSAttributedString alloc]initWithString:[string7 substringWithRange:NSMakeRange(1, 1)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:30],NSForegroundColorAttributeName:[UIColor redColor],NSBaselineOffsetAttributeName:@0}];
    NSAttributedString * attributedString17 = [[NSAttributedString alloc]initWithString:[string7 substringWithRange:NSMakeRange(2, 3)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor],NSBaselineOffsetAttributeName:@0}];
//    为负数
    NSAttributedString * attributedString18 = [[NSAttributedString alloc]initWithString:[string7 substringWithRange:NSMakeRange(5, 2)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor],NSBaselineOffsetAttributeName:@0}];
    NSAttributedString * attributedString19 = [[NSAttributedString alloc]initWithString:[string7 substringWithRange:NSMakeRange(7, 1)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor],NSBaselineOffsetAttributeName:@-5}];
//    为正数
    NSAttributedString * attributedString20 = [[NSAttributedString alloc]initWithString:[string7 substringWithRange:NSMakeRange(8, 1)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor],NSBaselineOffsetAttributeName:@0}];
    NSAttributedString * attributedString21 = [[NSAttributedString alloc]initWithString:[string7 substringWithRange:NSMakeRange(9, 3)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:30],NSForegroundColorAttributeName:[UIColor redColor],NSBaselineOffsetAttributeName:@0}];
     NSAttributedString * attributedString22 = [[NSAttributedString alloc]initWithString:[string7 substringWithRange:NSMakeRange(12, 3)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor],NSBaselineOffsetAttributeName:@10}];
    [mutAttributedString7 appendAttributedString:attributedString15];
    [mutAttributedString7 appendAttributedString:attributedString16];
    [mutAttributedString7 appendAttributedString:attributedString17];
    [mutAttributedString7 appendAttributedString:attributedString18];
    [mutAttributedString7 appendAttributedString:attributedString19];
    [mutAttributedString7 appendAttributedString:attributedString20];
    [mutAttributedString7 appendAttributedString:attributedString21];
    [mutAttributedString7 appendAttributedString:attributedString22];
    self.label8.attributedText = mutAttributedString7;
    
    
    NSString * string8 = @"Hello        world";
    NSMutableAttributedString * mutAttributedString8  = [[NSMutableAttributedString alloc]init];
    NSAttributedString * attributedString23 = [[NSAttributedString alloc]initWithString:[string8 substringWithRange:NSMakeRange(0, 8)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:30],NSForegroundColorAttributeName:[UIColor redColor],NSStrokeWidthAttributeName:@5,NSObliquenessAttributeName:@1,}];
    NSAttributedString * attributedString24 = [[NSAttributedString alloc]initWithString:[string8 substringWithRange:NSMakeRange(8, 10)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:30],NSForegroundColorAttributeName:[UIColor redColor],NSShadowAttributeName:shadow,NSObliquenessAttributeName:@-1}];
    [mutAttributedString8 appendAttributedString:attributedString23];
    [mutAttributedString8 appendAttributedString:attributedString24];
    self.label9.attributedText = mutAttributedString8;
    
    NSString * string9 = @"横向拉伸什么鬼";
    NSMutableAttributedString * mutAttributedString9  = [[NSMutableAttributedString alloc]init];
    NSAttributedString * attributedString25 = [[NSAttributedString alloc]initWithString:[string9 substringWithRange:NSMakeRange(0, 2)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor],NSExpansionAttributeName:@1}];
    NSAttributedString * attributedString26 = [[NSAttributedString alloc]initWithString:[string9 substringWithRange:NSMakeRange(2, 2)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:17],NSForegroundColorAttributeName:[UIColor redColor],NSShadowAttributeName:shadow,NSExpansionAttributeName:@0}];
    NSAttributedString * attributedString27 = [[NSAttributedString alloc]initWithString:[string9 substringWithRange:NSMakeRange(4, 3)] attributes:@{NSFontAttributeName:[UIFont fontWithName:@"futura" size:30],NSForegroundColorAttributeName:[UIColor redColor],NSShadowAttributeName:shadow,NSExpansionAttributeName:@-1}];
    [mutAttributedString9 appendAttributedString:attributedString25];
    [mutAttributedString9 appendAttributedString:attributedString26];
    [mutAttributedString9 appendAttributedString:attributedString27];
    self.label10.attributedText = mutAttributedString9;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//- (void)attributeString
//{
//    NSFontAttributeName               设置字体大小和字体的类型 默认12 Helvetica(Neue)
//    NSForegroundColorAttributeName    设置字体颜色，默认黑色 UIColor对象
//    NSBackgroundColorAttributeName    设置字体所在区域的背景颜色，默认为nil，透明色
//    NSLigatureAttributeName           设置连体属性，NSNumber对象 默认0 没有连体
//    NSKernAttributeName               设置字符间距， NSNumber浮点型属性 正数间距加大，负数间距缩小
//    NSStrikethroughStyleAttributeName 设置删除线，NSNumber对象
//    NSStrikethroughColorAttributeName 设置删除线颜色，UIColor对象，默认是黑色
//    NSUnderlineStyleAttributeName     设置下划线，NSNumber对象 NSUnderlineStyle枚举值
//    NSUnderlineColorAttributeName     设置下划线颜色，UIColor对象，默认是黑色
//    NSStrokeWidthAttributeName        设置笔画宽度，NSNumber对象 正数中空 负数填充
//    NSStrokeColorAttributeName        设置填充部分颜色，不是指字体颜色，UIColor对象
//    NSShadowAttributeName             设置阴影属性，取值为NSShadow对象
//    NSTextEffectAttributeName         设置文本特殊效果 NSString对象 只有图版印刷效果可用
//    NSBaselineOffsetAttributeName     设置基线偏移量，NSNumber float对象 正数向上偏移，负数向下偏移
//    NSObliquenessAttributeName        设置字体倾斜度，NSNumber float对象，正数右倾斜，负数左倾斜
//    NSExpansionAttributeName          设置文本横向拉伸属性，NSNumber float对象，正数横向拉伸文本，负数压缩
//    NSWritingDirectionAttributeName   设置文字书写方向，从左向右或者右向左
//    NSVerticalGlyphFormAttributeName  设置文本排版方向，NSNumber对象。0 横向排版，1 竖向排版

//    NSLinkAttributeName               设置文本超链接，点击可以打开指定URL地址
//    NSAttachmentAttributeName         设置文本附件，取值为NSTextAttachment对象，一般为图文混排
//    NSParagraphStyleAttributeName     设置文本段落排版，为NSParagraphStyle对象
//}
@end
