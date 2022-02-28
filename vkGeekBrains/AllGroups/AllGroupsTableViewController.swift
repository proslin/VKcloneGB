//
//  AllGroupsTableViewController.swift
//  vkGeekBrains
//
//  Created by Vitaly Prosvetov on 15.02.2022.
//

import UIKit

class AllGroupsTableViewController: UITableViewController {

    var allgroups: [Group] = []
    
    var delegate: SelectedGroupDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateAllGroups()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    private func generateAllGroups() {
        let group1 = Group(groupName: "Group1", groupAvatarURL: "allgroup")
        let group2 = Group(groupName: "Group2", groupAvatarURL: "group1")
        let group3 = Group(groupName: "Group3", groupAvatarURL: "group2")
        let group4 = Group(groupName: "Group4", groupAvatarURL: "allgroup")
        
        allgroups.append(group1)
        allgroups.append(group2)
        allgroups.append(group3)
        allgroups.append(group4)
        
        tableView.reloadData()
    }
    

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return allgroups.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AllGroupsCell", for: indexPath) as! AllGroupsTableViewCell
        let group = allgroups[indexPath.row]
        cell.allGroupName.text = group.groupName
        cell.allGroupImage.image = UIImage.init(named: group.groupAvatarURL)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedGroup = allgroups[indexPath.row]
        delegate?.selectedGroup(selectedGroup: selectedGroup)
        self.navigationController?.popViewController(animated: true)
    }
    
    
    
    
    //    @IBAction func addCity(segue: UIStoryboardSegue) {
    //
    //            // Проверяем идентификатор перехода, чтобы убедиться, что это нужный
    //            if segue.identifier == "addCity" {
    //            // Получаем ссылку на контроллер, с которого осуществлен переход
    //                guard let allCitiesController = segue.source as? AllCitiesController else { return }
    //            // Получаем индекс выделенной ячейки
    //                if let indexPath = allCitiesController.tableView.indexPathForSelectedRow {
    //            // Получаем город по индексу
    //                    let city = allCitiesController.cities[indexPath.row]
    //            // Проверяем, что такого города нет в списке
    //                    if !cities.contains(city) {
    //            // Добавляем город в список выбранных
    //                        cities.append(city)
    //            // Обновляем таблицу
    //                        tableView.reloadData()
    //                    }
    //                }
    //            }
    //        }
    
    

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
