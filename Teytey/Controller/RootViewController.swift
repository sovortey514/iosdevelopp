//
//  RootViewController.swift
//  Teytey
//
//  Created by vortey on 8/17/23.
//  Copyright © 2023 vortey. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
        
    }()
    
    private lazy var imageView: UIImageView = {
        let imgV = UIImageView()
        imgV.translatesAutoresizingMaskIntoConstraints = false
        imgV.image = UIImage (named: "apple-logo")
        return imgV
        
        
    }()
    
    private lazy var button: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .blue
        btn.setTitle("Workspace" , for: .normal)
        btn.setTitleColor(.white, for: .normal)
        btn.layer.cornerRadius = 15
        btn.addTarget(self, action: #selector(gotWorkspace), for: .touchUpInside)
        return btn
    }()
    
    private lazy var welcomelabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = " Welcome!"
        label.font = UIFont.boldSystemFont(ofSize: 17)
        return label
    }()
    
    override func loadView() {
        super.loadView()
        view.addSubview(containerView)
        view.addSubview(imageView)
        
        containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        containerView.addSubview(imageView)
        containerView.addSubview(welcomelabel)
        
        imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor).isActive = true
        imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor).isActive = true
        imageView.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
        imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 25).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        welcomelabel.leadingAnchor.constraint(equalTo: imageView.trailingAnchor,constant: 10).isActive = true
        welcomelabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
        welcomelabel.trailingAnchor.constraint(equalTo: containerView.trailingAnchor).isActive = true
        
        view.addSubview(button)
        button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        button.heightAnchor.constraint(equalToConstant: 45).isActive = true
        button.widthAnchor.constraint(equalToConstant: 150).isActive = true
        
        
        
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @objc private func gotWorkspace() {
        print("Hello!")
        
        let vc = WelcomeViewController()   
        let navc = UINavigationController(rootViewController: vc)
        navc.modalPresentationStyle = .overFullScreen
        present(navc, animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
