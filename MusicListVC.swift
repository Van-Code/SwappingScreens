//
//  MusicListVC.swift
//  SwappingScreens
//
//  Created by VTran on 1/6/17.
//  Copyright © 2017 VTran. All rights reserved.
//

import UIKit

class MusicListVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.blue
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var backBtnPressed: UIButton!
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func LoadThirdScreenPressed(_ sender: AnyObject) {
        let songTitle = "Swapping screens"
        performSegue(withIdentifier: "PlaySongBC", sender: songTitle)
    }
    @IBAction func backBtnPressed(_ sender: AnyObject) {
        dismiss(animated:true, completion: nil)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as?
            PlaySongBC {
            if let song = sender as? String{
                destination.selectedSong = song
            }
            
        }
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
