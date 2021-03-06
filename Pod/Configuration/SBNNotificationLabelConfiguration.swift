//
//  SBNNotificationLabelConfiguration.swift
//  StatusBarNotification
//
//  Created by Shannon Wu on 9/18/15.
//  Copyright © 2015 Shannon Wu. All rights reserved.
//

import Foundation

/**
*    If you use the default label to show the notification, you should send a customized configuration struct, the dufault implementation is a nonscrollabel label, with one line to show the information
*/
public struct SBNNotificationLabelConfiguration {
    /// if the label should scroll the content, default to false
    public var scrollabel = true
    /// If you set the scrollabel property to true, you can use this property to customize the scroll delay, default delay is 1 second
    public var scrollDelay: NSTimeInterval = 1.0
    /// If you set the scrollabel property to true, you can use this property to customize the scroll speed, default speed is 40 points per second
    public var scrollSpeed: CGFloat = 40.0
    /// Set the padding of the message label, default to 10.0 points
    public var padding: CGFloat = 10.0
    /// if the label should be multiline implementation, default to false
    public var multiline = false
    /// The background color of the notification view, default to black color
    public var backgroundColor = UIColor.blackColor()
    /// The text color of the notification view, default to white color
    public var textColor = UIColor.whiteColor()
    /// The font of the notification label, defalt to a system font of size 14.0, if you pass the attributed string, this property will be ignored
    public var font = UIFont.systemFontOfSize(StatusBarNotificationCenter.defaultMessageLabelFontSize)
    /// this property is not nil, the label will use the attributed string to show the message
    public var attributedText: NSAttributedString? = nil
    
    /**
    Init a new default notification label configuration
    
    - returns: a new default notification label configuration
    */
    public init() {
        
    }
}
