//
//  main.m
//  FactoryMethod
//
//  Created by 丁玉松 on 2018/10/30.
//  Copyright © 2018 丁玉松. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "LeiFeng.h"

#import "UndergraduateLeiFengFactory.h"
#import "VolunteerLeiFengFactory.h"

/**
 学雷锋志愿者帮助孤寡老人
 
 学雷锋志愿者有学生和社区志愿者
 
 主要帮助老人做洗衣服，打扫卫生，买菜这些活。
 
 */
int main(int argc, const char *argv[]) {
    @autoreleasepool {

        //工厂方法模式
        LeiFeng *underGraduateLeiFeng = [UndergraduateLeiFengFactory createLeiFeng];
        [underGraduateLeiFeng sweep];
        [underGraduateLeiFeng wash];
        [underGraduateLeiFeng buyFood];

        LeiFeng *volunteerLeiFeng = [VolunteerLeiFengFactory createLeiFeng];
        [volunteerLeiFeng sweep];
        [volunteerLeiFeng wash];
        [volunteerLeiFeng buyFood];

        //新增一个学雷锋的类型的话，则新增一个创建雷锋对象的工厂和学雷锋子类，不需要修改原有的代码，符合开闭原则

        NSNumber *number1 = [NSNumber numberWithBool:YES];
        NSNumber *number2 = [NSNumber numberWithDouble:11.2];

        NSLog(@"%@-%@", number1, number2);
    }
    return 0;
}
