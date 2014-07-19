UIScrollView-Actions
====================

UIScrollView category for scrolling to edges and pages.

✓ Returns content offsets for different edges, accounting for content insets.
  
    NSLog(@"Top content offset: %@", NSStringFromCGPoint(self.view.topContentOffset));
    NSLog(@"Bottom content offset: %@", NSStringFromCGPoint(self.view.bottomContentOffset));
    NSLog(@"Left content offset: %@", NSStringFromCGPoint(self.view.leftContentOffset));
    NSLog(@"Right content offset: %@", NSStringFromCGPoint(self.view.rightContentOffset));

✓ Checks if scroll view is scrolled to a given edge.

    NSLog(@"Scrolled to top: %@", self.view.isScrolledToTop ? @"YES" : @"NO");
    NSLog(@"Scrolled to bottom: %@", self.view.isScrolledToBottom ? @"YES" : @"NO");
    NSLog(@"Scrolled to left: %@", self.view.isScrolledToLeft ? @"YES" : @"NO");
    NSLog(@"Scrolled to right: %@", self.view.isScrolledToRight ? @"YES" : @"NO");

✓ Scrolls to edges.

    [self.view scrollToTopAnimated:YES];
    [self.view scrollToBottomAnimated:YES];
    [self.view scrollToLeftAnimated:YES];
    [self.view scrollToRightAnimated:YES];

✓ Returns current pagination index.

    NSLog(@"Current vertical page: %lu", self.view.verticalPageIndex);
    NSLog(@"Current horizontal page: %lu", self.view.horizontalPageIndex);

✓ Scrolls to pages.

    [self.view scrollToHorizontalPageIndex:2 animated:YES];
    [self.view scrollToVerticalPageIndex:3 animated:YES];
