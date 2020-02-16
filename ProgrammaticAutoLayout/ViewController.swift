//
//  ViewController.swift
//  ProgrammaticAutoLayout
//
//  Created by Jasmine Tan on 2/12/20.
//  Copyright © 2020 Jasmine Tan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let button = UIButton(type: .custom)
    let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        button.setTitle("Click me", for: .normal)
        button.setTitleColor(.purple, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
               view.addSubview(button)
        label.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label)


        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        button.widthAnchor.constraint(equalToConstant: 100).isActive = true
        button.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 250).isActive = true
        label.widthAnchor.constraint(equalToConstant: 250).isActive = true
        label.textAlignment = .center
        
        label.font = UIFont.systemFont(ofSize: 25)
        
        label.textColor = UIColor.blue
        button.addTarget(self, action: #selector(action(sender:)),for: .touchUpInside)
    }
     @objc fileprivate func action(sender: UIButton) {
        label.text = "Hello Jonah"
        
        
    }


}

