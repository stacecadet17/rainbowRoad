//
//  ViewController.swift
//  rainbowRoad
//
//  Created by Stacey Abbott on 11/11/17.
//  Copyright © 2017 Stacey Abbott. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let colors: [UIColor] = [.red, .orange, .yellow, .green, .blue, .purple]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row]
        return cell
    }
}
