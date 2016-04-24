//
//  IBBSTopicModel.swift
//  iBBS
//
//  Created by Augus on 4/18/16.
//  Copyright © 2016 iAugus. All rights reserved.
//

import SwiftyJSON


struct IBBSTopicModel {
    
    var id: String!
    var board: String!
    var title: String!
    var content: String!
    var username: String!
    var postTime: String!
    var avatarUrl: NSURL!
    
    init(json: JSON) {
        id        = json["id"].stringValue
        board     = json["board"].stringValue
        username  = json["username"].stringValue
        postTime  = json["post_time"].stringValue
        avatarUrl = NSURL(string: json["avatar"].stringValue)
        title     = formatData(json["title"].stringValue)
        content   = formatData(json["post_content"].stringValue)
    }
    
    private func formatData(str: String) -> String {
        return str.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceCharacterSet())
    }

}