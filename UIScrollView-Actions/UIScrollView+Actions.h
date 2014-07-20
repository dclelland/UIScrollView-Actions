//
//  UIScrollView+Actions.h
//  CALX
//
//  Created by Daniel Clelland on 14/12/13.
//  Copyright (c) 2013 Daniel Clelland. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIScrollView (Actions)

- (CGPoint)topContentOffset;
- (CGPoint)bottomContentOffset;
- (CGPoint)leftContentOffset;
- (CGPoint)rightContentOffset;

- (BOOL)isScrolledToTop;
- (BOOL)isScrolledToBottom;
- (BOOL)isScrolledToLeft;
- (BOOL)isScrolledToRight;

- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollToBottomAnimated:(BOOL)animated;
- (void)scrollToLeftAnimated:(BOOL)animated;
- (void)scrollToRightAnimated:(BOOL)animated;

- (NSUInteger)verticalPageIndex;
- (NSUInteger)horizontalPageIndex;

- (void)scrollToVerticalPageIndex:(NSUInteger)pageIndex animated:(BOOL)animated;
- (void)scrollToHorizontalPageIndex:(NSUInteger)pageIndex animated:(BOOL)animated;

@end

@interface UIViewController (UIScrollView)

- (UIScrollView *)scrollView;

@end