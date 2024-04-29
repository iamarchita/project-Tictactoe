//
//  MainViewController.swift
//  TicTacToc
//
//  Created by STUDENT on 4/22/24.
//

import UIKit

class MainViewController: UIViewController {
    
    @IBOutlet weak var tictactoe: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    
    @IBOutlet weak var playNow: UIButton!
    
    @IBAction func playButtonPressed(_ sender: UIButton) {
        let controller = UIStoryboard.init(name: "Main", bundle: nil).instantiateViewController(identifier: "playGame")
        controller.modalPresentationStyle = .fullScreen
        self.present(controller, animated: true)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
