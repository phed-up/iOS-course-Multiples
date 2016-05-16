//
//  ViewController.swift
//  multiples
//
//  Created by skwong on 5/9/16.
//  Copyright © 2016 fedup. All rights reserved.
//

import UIKit

class ViewController: UIViewController

{
    
    var userMultiple = 0
    var runningTotal = 0
    

    @IBOutlet weak var logo: UIImageView!
    @IBOutlet weak var mathLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var playButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var staticLabel: UILabel!
    
    
    @IBAction func playButtonClicked(sender: AnyObject)
    {
        if textField.text != nil && textField.text != ""
        
        {
        logo.hidden = true
        playButton.hidden = true
        textField.hidden = true
        mathLabel.hidden = true
        
        staticLabel.hidden = false
        addButton.hidden = false
        
        
        }
        
    }
    
    
    @IBAction func addButtonClicked(sender: AnyObject)
    {
        userMultiple = Int(textField.text!)!
        
        mathLabel.hidden = false
        staticLabel.hidden = true
        
        let total = runningTotal + userMultiple

        mathLabel.text = "\(runningTotal) + \(userMultiple) = \(total)"
        runningTotal = runningTotal + userMultiple
        
        isGameOver()
        
        
    }
 

    func isGameOver()
    {
        if runningTotal >= 100
        {
            restartGame()
        }
    }

    
    func restartGame()
        {
            userMultiple = 0
            runningTotal = 0
            
            textField.text = ""
    
            logo.hidden = false
            playButton.hidden = false
            textField.hidden = false
            mathLabel.hidden = true
    
            staticLabel.hidden = true
            addButton.hidden = true
    
        }
    
}

