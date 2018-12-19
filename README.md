# FactoryMethod

工厂模式





## Cocoa框架应用

```objective-c
        NSNumber *number1 = [NSNumber numberWithBool:YES];
        NSNumber *number2 = [NSNumber numberWithDouble:11.2];
        
        NSLog(@"%@-%@",number1,number2);
```

```
(lldb) p number1
(__NSCFBoolean *) $0 = 0x00007fff97ac1c40 YES
(lldb) p number2
(__NSCFNumber *) $1 = 0x0000000100725c60 (double)11.2
```

