//

//  JasonParson.swift
//  Jasontesting
//
//  Created by Deepanjan Paul on 07/11/14.
//  Copyright (c) 2014 Deepanjan Paul. All rights reserved.
//

import Foundation

class JasonParson : NSObject
{
    

    var jsonDataFromServer : NSData
    //var SessionArray :NSArray = NSArray()
    var arrayLength : Int = 1
    var index: Int = 0

    override init()
    {
        var path = NSBundle.mainBundle().pathForResource("File", ofType: "json")
        println("Path = \(path)");
       //jsonDataFromServer = NSData.dataWithContentsOfFile(path!, options:.DataReadingMappedIfSafe, error: nil)
        jsonDataFromServer = NSData.dataWithContentsOfMappedFile(path!) as NSData
    }
    
    func myjasonreader() ->NSString    {
      var error : NSError?
      let jsonDict:NSDictionary = NSJSONSerialization.JSONObjectWithData(jsonDataFromServer, options: NSJSONReadingOptions.MutableContainers, error: &error) as NSDictionary
    
       // println("Displaying the Contents of the File \(jsonDict)");
        
        let second = jsonDict["SECOND"] as NSDictionary
        let firstName = second["firstName"] as NSString
        println("SECOND = \(second)");
        //println("Displaying the Contents of the File[0] \(firstName)");
        
        var innerarray : NSDictionary =  second.valueForKey("address") as NSDictionary;
        
//        println("Inner Array = \(innerarray[1])");
        var mycity : NSString = innerarray["city"] as NSString;
        
        println("MY CITY =\(mycity)");
        let lname = second["lastName"] as NSString
        
        var phoneNumber: NSArray = second["phoneNumber"] as NSArray
        var insidePhoneNumber: NSDictionary = phoneNumber[1] as NSDictionary
        var number : String = insidePhoneNumber.valueForKey("number") as String
        println("phone number\(number)")
        
        
       //println("LAST NAME \(lname)");
        
        //let pnumber = second["phoneNumber"] as NSString
       // println("Phone Number = \(pnumber)");
//        
//        let pnumber = second["phoneNumber"] as NSString;
//        println("PHONE NUMBERS =\(pnumber)");
       // var myarray : NSDictionary = jsonDict.valueForKey("address") as NSDictionary
      //  println("deep\(myarray)")
        
        return mycity;
        
    }

}
