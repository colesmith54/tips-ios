//
//  StringExtension.swift
//  BlueToothCentral
//
//  Created by Olivier Robin on 30/10/2016.
//  Copyright © 2016 fr.ormaa. All rights reserved.
//

import Foundation

#if os(iOS) || os(watchOS) || os(tvOS)
import UserNotifications
#elseif os(OSX)
import Cocoa
#else
// something else :o)
#endif


class Tools {
    
    static func toString(_ txt: String?) -> String {
        if (txt == nil) {
            return "???"
        }
        else {
            return txt!
        }
    }
    
    
    static func sendNotification(name: String, objectName: String?, object: AnyObject?) {
        
        let user: [String:AnyObject]  = [objectName! : object!]
        
        NotificationCenter.default.post(name: Notification.Name(rawValue: name),
                                        object: nil, userInfo: user)
    }
    
}
