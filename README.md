#iOS7之后桌面背景效果
iOS7开始桌面背景会根据[陀螺仪](http://baike.baidu.com/link?url=BugS06F8DFJO8S7xzybmoVguhu5E7gDzW0PiCKAm3RIJl36HfAOUXeE2qCJ0Vei1ns26zv4-AyQf5iEq1GdYJOZ7uA7arWbvpuzLPZZ2G-W)的效果改变晚上发现网上没有相关demol(可能是我笨没搜到)

###代码说明
其实官方在iOS7的时候就公开的API我搜了一下确实没有找到有用的内容

使用 **UIInterpolatingMotionEffect**

`UIInterpolatingMotionEffect *effect = [[UIInterpolatingMotionEffect alloc]initWithKeyPath:@"center.y" type:UIInterpolatingMotionEffectTypeTiltAlongVerticalAxis];
    effect.maximumRelativeValue = @50.0;
    effect.minimumRelativeValue = @(-50.0);`

其中枚举有两个图上的是控制Y轴方向.另外一个控制X轴方向.配合上声明的字符串之后.**UIView**的子类调用`addMotionEffect`的方法添加即可


Demol在这:[Demol](https://github.com/Heiyuan/MotionEddects) 
