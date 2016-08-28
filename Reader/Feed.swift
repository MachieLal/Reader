//
//  Feed.swift
//  Reader
//
//  Created by Swarup_Pattnaik on 28/08/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import Cocoa

class Feed: NSObject {
  let name: String
  var children = [FeedItem]()

  init(name: String) {
    self.name = name
  }
  
  //Class method or Static Method
  class func feedList(fileName: String) -> [Feed] {
    //1
    var feeds = [Feed]()
    
    //2
    if let feedList = NSArray(contentsOfFile: fileName) as? [NSDictionary] {
      //3
      for feedItems in feedList {
        //4
        let feed = Feed(name: feedItems.objectForKey("name") as! String)
        //5
        let items = feedItems.objectForKey("items") as! [NSDictionary]
        //6
        for dict in items {
          //7
          let item = FeedItem(dictionary: dict)
          feed.children.append(item)
        }
        //8
        feeds.append(feed)
      }
    }
    
    //9
    return feeds
  }
}