//
//  ViewController.swift
//  demoCICD
//
//  Created by Hao Le on 14/03/2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Backend Url = \(infoForKey("Backend Url")), Consumer Key = \(infoForKey("Consumer Key")), Consumer Secret = \(infoForKey("Consumer Secret"))")
        let temp = infoForKey("Backend Url")
    }
    
    private func infoForKey(_ key: String) -> String? {
        return (Bundle.main.infoDictionary?[key] as? String)?
                .replacingOccurrences(of: "\\", with: "")
     }


}

