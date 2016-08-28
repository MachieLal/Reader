//
//  FeedItem.swift
//  Reader
//
//  Created by Swarup_Pattnaik on 28/08/16.
//  Copyright © 2016 Razeware LLC. All rights reserved.
//

import Cocoa

class FeedItem: NSObject {
  let url: String
  let title: String
  let publishingDate: NSDate
  
  init(dictionary: NSDictionary) {
    self.url = dictionary.objectForKey("url") as! String
    self.title = dictionary.objectForKey("title") as! String
    self.publishingDate = dictionary.objectForKey("date") as! NSDate
  }
}