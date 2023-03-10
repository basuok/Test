//
//  ViewController1.swift
//  testingggg
//
//  Created by Bassel Isshaq on 07.03.2023.
//

import UIKit

final class ViewController1:  UIViewController, UITableViewDelegate, UITableViewDataSource {
    

    
    private let tableView : UITableView = {
        let table = UITableView()
        //
        table.register(SimpleTableViewCell.self, forCellReuseIdentifier: SimpleTableViewCell.identifier)
        table.register(ImgeTableViewCell.nib(), forCellReuseIdentifier: ImgeTableViewCell.identifire)
        
        table.register(CodedTableViewCell.self, forCellReuseIdentifier: CodedTableViewCell.identifier)
        return table
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        
        view.backgroundColor = .white
        title = "Page 1"

    }
    
    // FRAM
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        //entir screen
        tableView.frame = view.bounds
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 15
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // first we need to register a cell .. So need to create cell at firstr
        if indexPath.row < 5 {
            let cell = tableView.dequeueReusableCell(withIdentifier: CodedTableViewCell.identifier , for: indexPath) as! CodedTableViewCell
            cell.configure()
        
            return cell
        }
        
        if indexPath.row < 10 {
            let cell = tableView.dequeueReusableCell(withIdentifier: ImgeTableViewCell.identifire , for: indexPath) as! ImgeTableViewCell
            cell.configure(with: "image1")
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: SimpleTableViewCell.identifier, for: indexPath)
        cell.textLabel?.text = "Hello"
        return cell
    }
 
    
}
