
import UIKit

class TableViewViewController: UITableViewController {

    private var contacts: [Contact] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Table view"
        view.backgroundColor = .white
        
        //register
        tableView.register(contactTableViewCell.self, forCellReuseIdentifier: "cell")
        mockData()
        
        tableView.reloadData()
        
        
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contacts.count
    }
    
    //return cell/ view
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? contactTableViewCell{
            
            cell.setupInfo(contact: contacts[indexPath.row])
            
            return cell
        }
        
        return UITableViewCell()
    }
    private func mockData() {
        let cont1 = Contact(name:"Name 1",status: "Active",phone: "0313112094")
        let cont2 = Contact(name:"Name 2",status: "Active",phone: "0313112095")
        let cont3 = Contact(name:"Name 3",status: "Active",phone: "0313112096")
        let cont4 = Contact(name:"Name 4",status: "Active",phone: "0313112097")
        let cont5 = Contact(name:"Name 5",status: "Active",phone: "0313112098")
        
        contacts.append(cont1)
        contacts.append(cont2)
        contacts.append(cont3)
        contacts.append(cont4)
        contacts.append(cont5)
        
    }
}
