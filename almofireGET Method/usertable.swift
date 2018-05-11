
import UIKit

class usertable: UITableView,UITableViewDelegate,UITableViewDataSource {
    var datasourceArray = [user](){
        // reload table data using didset 
       didSet
        {
            reloadData()
        }
    }
    
    override init(frame: CGRect, style: UITableViewStyle){
        super.init(frame: frame, style: style)
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.delegate = self
        self.dataSource = self
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.datasourceArray.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell:usercell = tableView.dequeueReusableCell(withIdentifier: "usercell", for: indexPath) as! usercell
        let myUser = self.datasourceArray[indexPath.row]
        cell.name.text = myUser.name
        cell.username.text = myUser.username
        cell.email.text = myUser.emial
        cell.phone.text = myUser.phone
        print(myUser.phone)
        cell.companyname.text = myUser.mycompany.companyname
        print(myUser.mycompany.companyname)
        cell.pharse.text = myUser.mycompany.phrase
        print(myUser.mycompany.phrase)
        cell.address.text = myUser.myaddress.street
        print(myUser.myaddress.street)
        
        
        return cell
    }

}
