    //
    //  ViewController.m
    //  KVO
    //
    //  Created by 韩惠涛 on 2020/6/24.
    //  Copyright © 2020 韩惠涛. All rights reserved.
    //

        #import "ViewController.h"
        @interface ViewController ()
        @property(nonatomic, strong)NSMutableArray * array;
        @end

        @implementation ViewController
        -(NSMutableArray*)array
        {
            if (!_array) {
                _array=[NSMutableArray new];
            }
            return _array;
        }
        - (void)viewDidLoad {
            [super viewDidLoad];
            [self.array addObjectsFromArray:@[@"黑色",@"白色"]];
            NSLog(@"初始化地址=%p",self.array);
            [self addObserver:self forKeyPath:@"array" options:NSKeyValueObservingOptionNew context:nil];
            
        }

        -(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
        {
        //    [self.array addObject:@"苍白色"];
            [[self mutableArrayValueForKey:@"array"]addObject:@"苍白色"];
            NSLog(@"改变数据源之后=%p",self.array);

        }


        -(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context
        {
           
        
            
            

    }

    @end
