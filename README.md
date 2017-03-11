UIScrollView-Actions
====================

UIScrollView category for scrolling to edges and pages.

✓ Checks if scroll view is scrolled to a given edge.

    scrollView.isScrolled(to edge: .top)

✓ Scrolls to edges.

    scrollView.scroll(to: .left)
    scrollView.scroll(to: .right, animated: true)

✓ Scrolls to pages.

    scrollView.scroll(to: .horizontal(index: 3))
    scrollView.scroll(to: .vertical(index: 5), animated: true)

✓ Snap to axes

    scrollView.snap(to: .vertical, animated: true).

