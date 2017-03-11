UIScrollView-Actions
====================

UIScrollView category for scrolling to edges and pages.

✓ Checks if scroll view is scrolled to a given edge.

    isScrolled(to edge: .top)

✓ Scrolls to edges.

    scroll(to: .left)
    scroll(to: .right, animated: true)

✓ Scrolls to pages.

    scroll(to: .horizontal(index: 3))
    scroll(to: .vertical(index: 5), animated: true)
