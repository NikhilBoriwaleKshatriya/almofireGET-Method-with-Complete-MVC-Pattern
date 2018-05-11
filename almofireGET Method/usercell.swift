//
//  usercell.swift
//  almofireGET Method
//
//  Created by Nikhil Boriwale on 19/12/17.
//  Copyright © 2017 nikhilboriwale. All rights reserved.
//

import UIKit

class usercell: UITableViewCell {

    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var email: UILabel!
    @IBOutlet weak var phone: UILabel!
    @IBOutlet weak var companyname: UILabel!
    @IBOutlet weak var pharse: UILabel!
    @IBOutlet weak var address: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
