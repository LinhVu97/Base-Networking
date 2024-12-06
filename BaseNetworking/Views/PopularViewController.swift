//
//  PopularViewController.swift
//  BaseNetworking
//
//  Created by Linh Vu on 6/12/24.
//

import UIKit

class PopularViewController: UIViewController {
    @IBOutlet weak var popularLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        fetchData()
    }

    private func fetchData() {
        NetworkingService.shared.request(PopularAPI(), responseType: Popular.self) { [weak self] result in
            guard let self = self else { return }
            
            switch result {
            case .success(let drinks):
                popularLabel.text = drinks.drinks.strDescription
            case .failure(let error):
                print(error.localizedDescription)
            }
        }
    }

}
