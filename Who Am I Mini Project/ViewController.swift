//
//  ViewController.swift
//  Who Am I Mini Project
//
//  Created by Scholar on 6/22/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var clickFunFacts: UILabel!
  var funFactsArray = ["I am a middle child", "My cat is named Georgia", "I used to live in Tennessee", "My first job title was cheesemonger", "My favorite book is The Secret History", "My favorite show is Grey's Anatomy", "I was born in the U-Chicago (and thats my dream school)", "My favorite movie is Little Women", "My favorite artist is the Arctic Monkeys", "I unironically like math"]
    func randomizer(array: [String]) -> String {
        let randInt = Int.random(in: 0..<9)
        let text = array[randInt]
        return text
        
    }

    @IBOutlet weak var image1: UIImageView!
    override func viewDidLoad() {
    
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //home image button
    @IBAction func home(_ sender: Any) {
        image1.image = UIImage(named:"Images")
    }
    
    // fave color image button
    @IBAction func favcolor(_ sender: Any) {
        image1.image = UIImage(named: "purple")
    }
    
    // pet image button
    @IBAction func pets(_ sender: Any) {
        image1.image = UIImage(named: "Pet")
    }
    
    // favorite food image button
    @IBAction func favfood(_ sender: Any) {
        image1.image=UIImage(named: "sweetgreen")
    }
    
    //fun fact randomizer
    @IBAction func funFacts(_ sender: Any) {
        clickFunFacts.text = randomizer(array:funFactsArray)
        }

}
