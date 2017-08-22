//
//  ViewController.swift
//  Save The Princess
//
//  Created by Valentin COUSIEN on 22/08/2017.
//  Copyright © 2017 VCousien. All rights reserved.
//

import UIKit

class LandingViewController: UIViewController {
    
    @IBOutlet weak var doorButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var durabilityLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self,
                                               selector: #selector(showDurability),
                                               name: Notification.Name("DurabilityDidChange"),
                                               object: nil)
        getSoldiers()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        showDurability()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    func showDurability() {
        durabilityLabel.text = "\(Door.shared.getDurability() * 1) %"
    }
    
    func getSoldiers() {
        
    }
    
    func showSoldiers() {
        
    }
    
    func doorDidBroke() {
        
    }
    
    @IBAction func addAction(_ sender: Any) {
        
        
    }
    
    @IBAction func hitDoorAction(_ sender: Any) {
    
        Door.shared.hittenFor(damage: 1)
    }
    
}

