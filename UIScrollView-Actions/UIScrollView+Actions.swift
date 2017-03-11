//
//  UIScrollView+Actions.swift
//  Pods
//
//  Created by Daniel Clelland on 11/03/17.
//
//

import UIKit

// MARK: Scrolling

public extension UIScrollView {
    
    /// A scroll view edge.
    public enum Edge {
        
        /// The scroll view's top edge.
        case top
        
        /// The scroll view's right edge.
        case right
        
        /// The scroll view's bottom edge.
        case bottom
        
        /// The scroll view's left edge.
        case left
    }
    
    /// Scrolls the scroll view to the specified edge.
    ///
    /// Only one coordinate is modified; if you scroll to the `.left` edge, the `contentOffset`'s `y` value won't be modified.
    ///
    /// If you are using content insets, they are respected, and the scroll view won't scroll too far.
    public func scroll(to edge: Edge, animated: Bool = false) {
        setContentOffset(contentOffset(for: edge), animated: animated)
    }
    
    /// Checks if the scroll view is scrolled to (or past) a given edge.
    ///
    /// Content insets are respected.
    public func isScrolled(to edge: Edge) -> Bool {
        switch edge {
        case .top:
            return contentOffset.y <= contentOffset(for: edge).y
        case .right:
            return contentOffset.x >= contentOffset(for: edge).x
        case .bottom:
            return contentOffset.y >= contentOffset(for: edge).y
        case .left:
            return contentOffset.x <= contentOffset(for: edge).x
        }
    }
    
    /// Calculates the correct content offset for a given edge.
    private func contentOffset(for edge: Edge) -> CGPoint {
        switch edge {
        case .top:
            return CGPoint(
                x: contentOffset.x,
                y: -contentInset.top
            )
        case .right:
            return CGPoint(
                x: contentSize.width + contentInset.right - bounds.width,
                y: contentOffset.y
            )
        case .bottom:
            return CGPoint(
                x: contentOffset.x,
                y: contentSize.height + contentInset.bottom - bounds.height
            )
        case .left:
            return CGPoint(
                x: -contentInset.left,
                y: contentOffset.y
            )
        }
    }
    
}

// MARK: Pagination

public extension UIScrollView {
    
    /// A scroll view page index on either the horizontal or vertical axis.
    public enum Page {
        
        /// A page index on the horizontal axis.
        case horizontal(index: Int)
        
        /// A page index on the vertical axis.
        case vertical(index: Int)
    }
    
    /// Scrolls the scroll view to the specified pagination location.
    ///
    /// Pages are considered to be the height or width of the scroll view's frame.
    ///
    /// Only one coordinate is modified; if you scroll to a `.horizontal` page index, the `contentOffset`'s `y` value won't be modified.
    ///
    /// If you are using content insets, they are respected, and the scroll view won't scroll too far.
    public func scroll(to page: Page, animated: Bool = false) {
        setContentOffset(contentOffset(for: page), animated: animated)
    }
    
    /// Calculates the correct content offset for a given page index.
    private func contentOffset(for page: Page) -> CGPoint {
        switch page {
        case .horizontal(let page):
            return CGPoint(
                x: CGFloat(page) * frame.width - contentInset.left,
                y: contentOffset.y
            )
        case .vertical(let page):
            return CGPoint(
                x: contentOffset.x,
                y: CGFloat(page) * frame.height - contentInset.top
            )
        }
    }
    
}
