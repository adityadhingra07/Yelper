//
//  BusinessCell.swift
//  Yelp
//
//  Created by Aditya Dhingra on 2/21/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var reviews: UILabel!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var categories: UILabel!
    @IBOutlet weak var distance: UILabel!
    @IBOutlet weak var stars: UIImageView!
    
    var business: Business! {
        didSet {
            name.text = business.name
            thumbImg.setImageWith(business.imageURL!)
            address.text = business.address
            categories.text = business.categories
            reviews.text = "\(business.reviewCount!) Reviews"
            distance.text = business.distance
            stars.setImageWith(business.ratingImageURL!)
            
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbImg.layer.cornerRadius = 5
        thumbImg.clipsToBounds = true
        name.preferredMaxLayoutWidth = name.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        name.preferredMaxLayoutWidth = name.frame.size.width
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
