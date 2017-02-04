//
//  PlaySongBC.swift
//  SwappingScreens
//
//  Created by VTran on 1/6/17.
//  Copyright © 2017 VTran. All rights reserved.
//

import UIKit

class PlaySongBC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        songTitleLbl.text = _selectedSong!
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBOutlet weak var songTitleLbl: UILabel!
    
    private var _selectedSong: String!
    
    var selectedSong: String {
        get{
            return _selectedSong
        } set {
            _selectedSong = newValue
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
