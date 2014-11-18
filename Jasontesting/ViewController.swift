//
//  ViewController.swift
//  Jasontesting
//
//  Created by Deepanjan Paul on 07/11/14.
//  Copyright (c) 2014 Deepanjan Paul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var citylabel: UILabel!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
    
        var myobj = JasonParson() as JasonParson;
        myobj.myjasonreader();
        citylabel.text=myobj.myjasonreader();
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}

