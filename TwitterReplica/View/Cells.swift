//
//  Cells.swift
//  TwitterReplica
//
//  Created by Tushar Singh on 02/07/18.
//  Copyright © 2018 Tushar Singh. All rights reserved.
//

import LBTAComponents

let twitterBlue = UIColor(r: 61, g: 167, b: 244)

class UserHeader:DatasourceCell{
    
    let textLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 18)
        label.text = "Who to Follow"
        return label
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}
class UserFooter: DatasourceCell {
    let textLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 16)
        label.text = "See More"
        label.textColor = twitterBlue
        return label
    }()
    override func setupViews() {
        super.setupViews()
        addSubview(textLabel)
        textLabel.anchor(topAnchor, left: leftAnchor, bottom: bottomAnchor, right: rightAnchor, topConstant: 0, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        
    }
}

class UserCell:DatasourceCell{
    override var datasourceItem: Any?{
        didSet{
            nameLabel.text = datasourceItem as? String
        }
    }
    
    let profileImageView:UIImageView = {
        let imageView = UIImageView()
        imageView.image = #imageLiteral(resourceName: "unnati")
        imageView.layer.cornerRadius = 5
        imageView.layer.masksToBounds = true
        return imageView
    }()
    let nameLabel:UILabel = {
        let label = UILabel()
        label.text = "Tushar Singh"
        label.font = UIFont.boldSystemFont(ofSize: 16)
        return label 
    }()
    
    let usernameLabel:UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor=UIColor(r: 124 , g: 131, b: 139)
        label.text = "@tushar1210"
        
        return label
    }()
    
    let bioLabel:UITextView = {
        let label = UITextView()
        label.text = "blah blah blah w;dka; d;dka;dka;da ;dkadka;ldka ;ldka;ldka ;dka;ldka;d ka;kd; lak;akd;ad"
        label.backgroundColor = .clear
        label.font = UIFont.systemFont(ofSize: 15)
        return label
    }()
    
    let followButton:UIButton = {
        let button = UIButton()
        button.layer.cornerRadius = 5
        button.layer.borderColor = twitterBlue.cgColor
        button.setTitleColor(twitterBlue, for: .normal)
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        button.layer.borderWidth = 1
        button.setTitle("+ Follow", for: .normal)
       // button.setImage(#imageLiteral(resourceName: "followbutton"), for: .normal)
        
        button.imageView?.contentMode = .scaleAspectFit
        
        return button
    }()
    
    override func setupViews() {
        super.setupViews()
        addSubview(profileImageView)
        addSubview(nameLabel)
        addSubview(usernameLabel)
        addSubview(bioLabel)
        addSubview(followButton)
        profileImageView.anchor(self.topAnchor, left: self.leftAnchor, bottom: nil, right: nil, topConstant: 12, leftConstant: 12, bottomConstant: 0, rightConstant: 0, widthConstant: 50, heightConstant: 50)

        

        nameLabel.anchor(profileImageView.topAnchor, left: profileImageView.rightAnchor, bottom: nil, right: followButton.leftAnchor, topConstant: 0, leftConstant: 8, bottomConstant: 0, rightConstant: 12, widthConstant: 0, heightConstant: 20)
        
        usernameLabel.anchor(nameLabel.bottomAnchor, left: nameLabel.leftAnchor, bottom: nil, right: nameLabel.rightAnchor, topConstant: 0, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 20 )
        
        bioLabel.anchor(usernameLabel.bottomAnchor, left: usernameLabel.leftAnchor, bottom: self.bottomAnchor, right: self.rightAnchor, topConstant: -4, leftConstant: -2 , bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
        followButton.anchor(topAnchor, left: nil, bottom: nil, right: self.rightAnchor, topConstant: 12, leftConstant: 0, bottomConstant: 0, rightConstant: 12, widthConstant: 120, heightConstant: 35)
        
    
    }
    

}

