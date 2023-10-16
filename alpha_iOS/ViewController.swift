//
//  ViewController.swift
//  alpha_iOS
//
//  Created by Даня on 02.10.2023.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemCyan
        let url: URL = URL(string: "https://api.punkapi.com/v2/beers")!
        URLSession.shared.dataTask(with: url, completionHandler: {data, response, error in
            guard
                let data = data,
                let response,
                error == nil
            else{
                return
            }
//            print(data)
            let str = String(data: data, encoding: .utf8)
            print("Полученные данные: \(str ?? "")")
        }).resume()
        // Do any additional setup after loading the view.
    }


}

