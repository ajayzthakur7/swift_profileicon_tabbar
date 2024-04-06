//
//  ProfileTabBarView.swift
//  AJ
//
//  Created by Rahul Sharma on 13/02/24.
//

import Foundation
import UIKit


let profileTabBarDimension = 25


class ProfileTabBarView: UIView {
    // MARK: - Outlets And Variable
     let contentView: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: profileTabBarDimension, height: profileTabBarDimension))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .red
         view.clipsToBounds = true
        return view
    }()
    
     let imageViewPerson: UIImageView = {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: profileTabBarDimension, height: profileTabBarDimension))
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        return imageView
    }()
    
    // MARK: - Initialization
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViews()
    }
    
    private func setupViews() {
        addSubview(contentView)
        contentView.addSubview(imageViewPerson)
        
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: trailingAnchor),
            contentView.topAnchor.constraint(equalTo: topAnchor),
            contentView.bottomAnchor.constraint(equalTo: bottomAnchor),
            contentView.heightAnchor.constraint(equalToConstant: CGFloat(profileTabBarDimension)),
            contentView.widthAnchor.constraint(equalToConstant: CGFloat(profileTabBarDimension)),
            
            imageViewPerson.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
            imageViewPerson.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
            imageViewPerson.topAnchor.constraint(equalTo: contentView.topAnchor),
            imageViewPerson.bottomAnchor.constraint(equalTo: contentView.bottomAnchor)
        ])
        
        contentView.layer.cornerRadius = contentView.frame.size.width / 2
        imageViewPerson.layer.cornerRadius = imageViewPerson.frame.size.width / 2
    }
    
    // MARK: - Class Level Functions
    class func createInScreenSize() -> ProfileTabBarView {
        let view = ProfileTabBarView(frame: CGRect(x: 0, y: 0, width: profileTabBarDimension, height: profileTabBarDimension))
        return view
    }
}




