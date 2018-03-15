//
//  ViewController.swift
//  DemoTextViewInCell
//
//  Created by admin on 15/03/18.
//  Copyright © 2018 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var myArray = [ "some text",
                    "I have a tableView and a UITextView inside it. I am trying to add data from JSON to the table view but it is not shrinking/expanding according to size. I have tried a lot of forums and methods",
                    "This is because, when I set the trailing and leading constraints of the UITextView to the cell, it starts working with height but stops working with width. When I remove the leading/trailing constraints, the content of the UITextView goes beyond the screen and does not come as multiline i.e. does not expand with height. I have tried -",
                    "This is because, when I set the trailing and leading constraints of the UITextView to the cell, it starts working with height but stops working with width. When I remove the leading/trailing constraints, the content of the UITextView goes beyond the screen and does not come as multiline i.e. does not expand with height. I have tried -This is because, when I set the trailing and leading constraints of the UITextView to the cell, it starts working with height but stops working with width. When I remove the leading/trailing constraints, the content of the UITextView goes beyond the screen and does not come as multiline i.e. does not expand with height. I have tried -"
                  ]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Message") as! TextViewCell
        cell.customTextView.textColor = UIColor.white
        
        // Give a source to table view cell's label
        cell.customTextView.text = myArray[indexPath.row]
        cell.sizeToFit()
        
        if (indexPath.row % 2 == 0) {
            cell.customTextView.backgroundColor = UIColor.gray
            cell.customTextView.textAlignment = .right
        } else {
            cell.customTextView.backgroundColor = UIColor.blue
            cell.customTextView.textAlignment = .left
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableViewAutomaticDimension
    }
    
    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
        return 10
    }
    
}

