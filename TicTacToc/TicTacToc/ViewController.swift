//
//  ViewController.swift
//  TicTacToc
//
//  Created by STUDENT on 4/18/24.
//

import UIKit

class ViewController: UIViewController {
    var activePlayer = 1//cross
    var gameState = [0,0,0,0,0,0,0,0,0]
    let winningCombination = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]
    ]
    
    var gameIsActive = true
    let multiply_imageConfiguration = UIImage.SymbolConfiguration(pointSize: 17, weight: .medium, scale: .large)
    var multiplyImage =  UIImage()
    let circle_imageConfiguration = UIImage.SymbolConfiguration(pointSize: 17, weight: .medium, scale: .large)
    var circleImage =  UIImage()
    
    @IBOutlet weak var firstButton: UIButton!
    
    @IBOutlet weak var secondButton: UIButton!
    
    @IBOutlet weak var thirdButton: UIButton!
    
    @IBOutlet weak var forthButton: UIButton!
    
    @IBOutlet weak var fifthButton: UIButton!
    
    @IBOutlet weak var sixthButton: UIButton!
    
    @IBOutlet weak var seventhButton: UIButton!
    
    @IBOutlet weak var eighthButton: UIButton!
    
    
    @IBOutlet weak var ninthButton: UIButton!
    
    @IBAction func button(_ sender: UIButton)
    {
        if (gameState[sender.tag-1] == 0 && gameIsActive == true)
        {
            gameState[sender.tag-1] = activePlayer
            
            if (activePlayer == 1)
            {
                sender.setImage(multiplyImage, for: .normal)
                activePlayer = 2
            }
            else
            {
                sender.setImage(circleImage, for: .normal)
                activePlayer = 1
            }
        }
        for combination in winningCombination {
            if gameState[combination[0]] != 0 &&
                gameState[combination[0]] == gameState[combination[1]] &&
                gameState[combination[1]] == gameState[combination[2]]
            {
                gameIsActive = false
                if gameState[combination[0]] == 1
                {
                    label.text = "CROSS HAS WON!"
                }
                else{
                    label.text = "NOUGHT HAS WON!"
                }
                playAgainButton.isHidden = false
                label.isHidden = false
            }
        }
        gameIsActive = false
        for i in gameState
        {
            if i == 0
            {
                gameIsActive = true
                break
            }
        }
        if gameIsActive == false
        {
            label.text = "IT WAS A DRAW"
            label.isHidden = false
            playAgainButton.isHidden = false
        }
    }
     
         @IBAction func backButtonPressed(_ sender: Any) {
             self.dismiss(animated: true)
         }
         
        
    
    @IBOutlet weak var label: UILabel!
    
   
    @IBOutlet weak var playAgainButton: UIButton!
    
    @IBAction func PlayAgain(_ sender: UIButton) {
        gameState = [0,0,0,0,0,0,0,0,0]
        gameIsActive = true
        activePlayer = 1
        playAgainButton.isHidden = true
        label.isHidden = true
      
            firstButton.setImage( UIImage(), for:.normal)
            secondButton.setImage( UIImage(), for:.normal)
        thirdButton.setImage( UIImage(), for:.normal)
        forthButton.setImage( UIImage(), for:.normal)
        fifthButton.setImage( UIImage(), for:.normal)
        sixthButton.setImage( UIImage(), for:.normal)
        seventhButton.setImage( UIImage(), for:.normal)
        eighthButton.setImage( UIImage(), for:.normal)
        ninthButton.setImage( UIImage(), for:.normal)
    }
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        multiplyImage =  UIImage.init(systemName: "multiply",withConfiguration: multiply_imageConfiguration) ??  UIImage()
        circleImage =  UIImage.init(systemName: "circle",withConfiguration: circle_imageConfiguration) ??  UIImage()
        
        
        // Do any additional setup after loading the view.
    }


}

