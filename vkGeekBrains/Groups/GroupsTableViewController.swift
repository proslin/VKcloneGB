//
//  GroupsTableViewController.swift
//  vkGeekBrains
//
//  Created by Vitaly Prosvetov on 15.02.2022.
//

import UIKit

protocol SelectedGroupDelegate: class {
    func selectedGroup(selectedGroup: Group)
}

class GroupsTableViewController: UITableViewController, SelectedGroupDelegate {
    
    

    var groups: [Group] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateGroups()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    @IBAction func addButtonPressed(_ sender: Any) {
        let allGroupVC = storyboard?.instantiateViewController(withIdentifier: "allGroupsViewControllerKey") as! AllGroupsTableViewController
        allGroupVC.delegate = self
        //self.navigationController?.show(allGroupVC, sender: nil)
        self.show(allGroupVC, sender: nil)
    }
    
    func selectedGroup(selectedGroup: Group) {
        groups.append(selectedGroup)
        print(groups)
        tableView.reloadData()
    }
    // MARK: - Table view data source

    private func generateGroups() {
        let group1 = Group(groupName: "Group1", groupAvatarURL: "group1")
        let group2 = Group(groupName: "Group2", groupAvatarURL: "group2")
        
        groups.append(group1)
        groups.append(group2)
        
        tableView.reloadData()
    }
    
   

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return groups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GroupCell", for: indexPath) as! GroupsTableViewCell

        let group = groups[indexPath.row]
        cell.groupName.text = group.groupName
        cell.groupImage.image = UIImage.init(named: group.groupAvatarURL)
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
