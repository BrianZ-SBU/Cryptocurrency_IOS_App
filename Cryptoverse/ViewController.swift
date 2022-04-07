//
//  ViewController.swift
//  testing123
//
//  Created by Brian Zhou on 4/6/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private let tableView: UITableView = {
        let tableView = UITableView(frame: . zero, style:. grouped)
        tableView.register(CryptoTableView.self, forCellReuseIdentifier: CryptoTableView.identifier)
        return tableView
    }()
    
    private var viewModels = [CryptoTableViewCellModel]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        title = "Crypto"
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
        
        APICaller.shared.getCryptoStats{[weak self] result in
            switch result{
            case .success(let models):
                self?.viewModels = models.compactMap({
                    CryptoTableViewCellModel(
                        name: $0.name ?? "N/A",
                        symbol:$0.asset_id,
                        price: "$1"
                    )
                })
                DispatchQueue.main.async{
                    self?.tableView.reloadData()
                }
            case .failure(let error):
                print("Error: \(error)")
            }
        }
    }
    
    override func viewDidLayoutSubviews(){
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: CryptoTableView.identifier, for: indexPath) as? CryptoTableView else {
            fatalError()
        }
        cell.configure(with: viewModels[indexPath.row])
        return cell
    }


}

