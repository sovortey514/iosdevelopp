//
//  contactTableViewCell.swift
//  Teytey
//
//  Created by vortey on 8/23/23.
//  Copyright © 2023 vortey. All rights reserved.
//

import UIKit

class contactTableViewCell: UITableViewCell {
    
    var onClicked: ((String) ->Void)?
    private var contact: Contact!

    private lazy var profileImageV: UIImageView = {
        let imgV = UIImageView()
        imgV.translatesAutoresizingMaskIntoConstraints = false
        imgV.backgroundColor = .lightGray
        
        return imgV
    }()
    
    private lazy var nameLabel: UILabel = {
        let Ib = UILabel()
        Ib.translatesAutoresizingMaskIntoConstraints = false
        Ib.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        
        return Ib
    }()
    
    private lazy var statusLable: UILabel = {
        let Lb = UILabel()
        Lb.translatesAutoresizingMaskIntoConstraints = false
        Lb.font = UIFont.systemFont(ofSize: 17, weight: .regular)
        Lb.textColor = .lightGray
        Lb.backgroundColor = .green
        
        return Lb
       }()
    private lazy var phoneLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.systemFont(ofSize: 15, weight: .regular)
        lb.textColor = .lightGray
        lb.backgroundColor = .green
        return lb
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.addSubview(profileImageV)
        contentView.addSubview(nameLabel)
        contentView.addSubview(statusLable)
        contentView.addSubview(phoneLabel)
        
        profileImageV.heightAnchor.constraint(equalToConstant: 35).isActive = true
        profileImageV.widthAnchor.constraint(equalTo: profileImageV.heightAnchor).isActive = true
        
        profileImageV.topAnchor.constraint(equalTo: contentView.topAnchor,constant: 15).isActive = true
        profileImageV.leadingAnchor.constraint(equalTo: contentView.leadingAnchor,constant: 15).isActive = true
        profileImageV.bottomAnchor.constraint(equalTo: contentView.bottomAnchor,constant: -15).isActive = true
        
        nameLabel.topAnchor.constraint(equalTo: profileImageV.topAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: profileImageV.trailingAnchor,constant: 20).isActive = true
        
        statusLable.centerYAnchor.constraint(equalTo: nameLabel.centerYAnchor).isActive = true
        statusLable.leadingAnchor.constraint(equalTo: nameLabel.trailingAnchor,constant: 20).isActive = true
        
        phoneLabel.leadingAnchor.constraint(equalTo: profileImageV.trailingAnchor,constant: 20).isActive = true
        phoneLabel.bottomAnchor.constraint(equalTo: profileImageV.bottomAnchor).isActive = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:)has not been  ")
    }
    func setupInfo(contact: Contact){
        nameLabel.text = contact.name
        statusLable.text = contact.status
        phoneLabel.text = contact.phone
        
    }
}
