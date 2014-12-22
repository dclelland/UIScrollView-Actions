//
//  UIScrollView+Actions.m
//  CALX
//
//  Created by Daniel Clelland on 14/12/13.
//  Copyright (c) 2013 Daniel Clelland. All rights reserved.
//

#import "UIScrollView+Actions.h"

@implementation UIScrollView (Actions)

- (CGPoint)topContentOffset
{
    return CGPointMake(0.0f, -self.contentInset.top);
}

- (CGPoint)bottomContentOffset
{
    return CGPointMake(0.0f, self.contentSize.height + self.contentInset.bottom - self.bounds.size.height);
}

- (CGPoint)leftContentOffset
{
    return CGPointMake(-self.contentInset.left, 0.0f);
}

- (CGPoint)rightContentOffset
{
    return CGPointMake(self.contentSize.width + self.contentInset.right - self.bounds.size.width, 0.0f);
}

- (BOOL)isScrolledToTop
{
    return self.contentOffset.y <= [self topContentOffset].y;
}

- (BOOL)isScrolledToBottom
{
    return self.contentOffset.y >= [self bottomContentOffset].y;
}

- (BOOL)isScrolledToLeft
{
    return self.contentOffset.x <= [self leftContentOffset].x;
}

- (BOOL)isScrolledToRight
{
    return self.contentOffset.x >= [self rightContentOffset].x;
}

- (void)scrollToTopAnimated:(BOOL)animated
{
    [self setContentOffset:[self topContentOffset] animated:animated];
}

- (void)scrollToBottomAnimated:(BOOL)animated
{
    [self setContentOffset:[self bottomContentOffset] animated:animated];
}

- (void)scrollToLeftAnimated:(BOOL)animated
{
    [self setContentOffset:[self leftContentOffset] animated:animated];
}

- (void)scrollToRightAnimated:(BOOL)animated
{
    [self setContentOffset:[self rightContentOffset] animated:animated];
}

- (NSUInteger)verticalPageIndex
{
    return (self.contentOffset.y + (self.frame.size.height * 0.5f)) / self.frame.size.height;
}

- (NSUInteger)horizontalPageIndex
{
    return (self.contentOffset.x + (self.frame.size.width * 0.5f)) / self.frame.size.width;
}

- (void)scrollToVerticalPageIndex:(NSUInteger)pageIndex animated:(BOOL)animated
{
    [self setContentOffset:CGPointMake(0.0f, self.frame.size.height * pageIndex) animated:animated];
}

- (void)scrollToHorizontalPageIndex:(NSUInteger)pageIndex animated:(BOOL)animated
{
    [self setContentOffset:CGPointMake(self.frame.size.width * pageIndex, 0.0f) animated:animated];
}

@end

@implementation UIViewController (UIScrollView)

- (UIScrollView *)scrollView
{
    if ([self isKindOfClass:[UITableViewController class]]) {
        UITableViewController *tableViewController = (UITableViewController *)self;
        return tableViewController.tableView;
    }
    
    if ([self isKindOfClass:[UICollectionViewController class]]) {
        UICollectionViewController *collectionViewController = (UICollectionViewController *)self;
        return collectionViewController.collectionView;
    }
    
    return nil;
}

@end
