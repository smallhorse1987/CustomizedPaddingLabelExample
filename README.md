# CustomizedPaddingLabel

可自定义上下左右边距的UILabel

![](https://github.com/smallhorse1987/CustomizedPaddingLabelExample/blob/master/LabelMargin/labelMargin/demo.png)

##为什么要用CustomizedPaddingLabel

通过UILabel.attributedText可设置左右边距，但是对于上下边距的设置就无能为力了。

##使用CustomizedPaddingLabel
1, CustomizedPaddingLabel.m CustomizedPaddingLabel.h 拷贝到工程里。  
2, 设置所需要的边距  
``` 
- (id)initWithCoder:(NSCoder *)aDecoder  
{  
    self = [super initWithCoder:aDecoder];  
    if (self) {  
        self.edgeInsets = UIEdgeInsetsMake(20, 10, 20, 10);  
    }  
    return self;  
}
```
