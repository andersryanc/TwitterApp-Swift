//
//  HomeDatasourceController.swift
//  Twitter
//
//  Created by Ryan Anderson on 1/31/17.
//  Copyright © 2017 Ryan Anderson. All rights reserved.
//

import LBTAComponents

class HomeDatasourceController: DatasourceController {
    
    let navItemRect = CGRect(x: 0, y: 0, width: 34, height: 34)

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavBarItems()
        
        let homeDatasource = HomeDatasource()
        self.datasource = homeDatasource
        collectionView?.backgroundColor = UIColor(r: 232, g: 236, b: 241)
    }
    
    override func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        if let user = self.datasource?.item(indexPath) as? User {
            //user.bioText
            
            //let's get an estimation of the height of our cell based on user.bioText
            //user.bioText is the only var that will change the height
            
            // view - leftPadding - profileImageWidth - rightPadding - arbitraryAmountBasedOnTestingDifferentDevices
            let approxWidthOfBioTextView = view.frame.width - padding - 50 - padding - 6
            let size = CGSize(width: approxWidthOfBioTextView, height: 1000)
            
            // UIFont should match what was used in the bioTextView in the cell
            let attributes = [NSFontAttributeName: UIFont.systemFont(ofSize: 15)]
            
            let estimatedFrame = NSString(string: user.bioText).boundingRect(with: size, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
            
            // bioText + topPadding + nameLabel.height + usernameLabel.height + bottomPadding + littleExtraForTextViewInsets
            let estimatedHeight = estimatedFrame.height + padding + 20 + 20 + padding + 2
            
            return CGSize(width: view.frame.width, height: estimatedHeight)
        }
        
        return CGSize(width: view.frame.width, height: 150)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForHeaderInSection section: Int) -> CGSize {
        
        if section == 1  {
            return .zero
        }
        
        return CGSize(width: view.frame.width, height: 50)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, referenceSizeForFooterInSection section: Int) -> CGSize {
        
        if section == 1 {
            return .zero
        }
        
        return CGSize(width: view.frame.width, height: 50 + footerBottomMargin)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
}
