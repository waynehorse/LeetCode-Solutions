//
//  SumOfLeftLeaves_404.m
//  LeetCode_Solutions
//
//  Created by 来自遥远星系的核心巡洋舰 on 16/10/10.
//  Copyright © 2016年 KnightJoker. All rights reserved.
//


#import "SumOfLeftLeaves_404.h"

struct TreeNode {
    int val;
    struct TreeNode *left;
    struct TreeNode *right;
};

@implementation SumOfLeftLeaves_404

- (NSInteger)sumOfLeftLeaves:(struct TreeNode *)root {

    NSInteger count_left = 0;
    NSInteger count_right = 0;
    if (root == nil) {
        return 0;
    }
    if (root->left) {
        count_left = root->left->val + [self sumOfLeftLeaves:root->left];
    }
    if (root->right) {
        count_right = [self sumOfLeftLeaves:root->right->left];
    }
    
    return count_left + count_right;
}

@end
