//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by Angela Yu on 08/08/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var storyBrain = StoryBrain()

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    func updateUI(){
        storyLabel.text = storyBrain.getStory()
        choice1Button.setTitle(storyBrain.getChoice1(), for:.normal)
        choice2Button.setTitle(storyBrain.getChoice2(), for:.normal)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()

    }

    @IBAction func choiceMade(_ sender: UIButton) {
        storyBrain.choiceMade(choice: sender.currentTitle!)
        updateUI()
    }
    
}

