//
//  TabBar.swift
//  tabarProfileIcon
//
//  Created by Rahul Sharma on 13/02/24.
//

import Foundation
import UIKit

// Add this package in SPM
//https://github.com/SDWebImage/SDWebImage.git
import SDWebImage



// Add profile icon on profileTababr
extension TabBar {
    
    override func viewWillLayoutSubviews() {
        super.viewWillLayoutSubviews()
        self.setUserProfileImageOnTabbar()
    }
    
    func getCustomImageForUserProfileImage(downloadedImage: UIImage, borderWidth: CGFloat) -> UIImage {
        var customizedPersonImage: UIImage?
        let tabBarProfileView = ProfileTabBarView.createInScreenSize()
        tabBarProfileView.imageViewPerson.image = downloadedImage
        tabBarProfileView.contentView.layer.borderWidth = borderWidth
        // Converting UIView To UIImage
        customizedPersonImage = tabBarProfileView.asImage()
        if let image = customizedPersonImage {
            return image
        } else {
            return UIImage.init(named: "your placeholder-avatar") ?? UIImage()
        }
    }
   
    func setUserProfileImageOnTabbar() {
        for tabBarItem in tabBar.items! {
            tabBarItem.title = ""
            if (tabBarItem.tag == 1) {
                let userImageUrl = "https://res.cloudinary.com/de6465wz7/image/upload/v1702629073/SportLocker/profile_images/6572b8d6be487a132e88afd7.jpg"
                if (!userImageUrl.elementsEqual("")) {
                    SDWebImageDownloader.shared.downloadImage(with: URL.init(string: userImageUrl)) {
                        (image, data, error, finished) in
                        if (finished) {
                            if let image = image {
                                let finalImageUnSelected = self.getCustomImageForUserProfileImage(downloadedImage: image, borderWidth: 0).withRenderingMode(.alwaysOriginal)
                                let finalImageSelected = self.getCustomImageForUserProfileImage(downloadedImage: image, borderWidth: 2).withRenderingMode(.alwaysOriginal)
                                tabBarItem.image = finalImageUnSelected
                                tabBarItem.selectedImage = finalImageSelected
                            }
                        }
                    }
                }
            }
        }
    }
    
}
