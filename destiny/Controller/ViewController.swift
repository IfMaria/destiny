//
//  ViewController.swift
//  destiny
//
//  Created by Maria Kramer on 02.08.2020.
//  Copyright © 2020 Maria Kramer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var questionText: UILabel!
    @IBOutlet weak var choiceOne: UIButton!
    @IBOutlet weak var choiceTwo: UIButton!
    
    var story = StoryQuestions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        story.nextStory(userChoice: sender.currentTitle!)
        updateUI()
    }
    
    func updateUI () {
        questionText.text = story.getStoryText()
        choiceOne.layer.cornerRadius = 20
        choiceOne.setTitle(story.getChoiceOne(), for: .normal)
        choiceTwo.layer.cornerRadius = 20
        choiceTwo.setTitle(story.getChoiceTwo(), for: .normal)
        
        if choiceOne.currentTitle == "The End" {
            choiceOne.isEnabled = false
            
        } else { choiceOne.isEnabled = true}
    }
    
}

