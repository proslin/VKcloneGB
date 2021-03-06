//
//  FriendsTableViewController.swift
//  vkGeekBrains
//
//  Created by Vitaly Prosvetov on 15.02.2022.
//

import UIKit

class FriendsTableViewController: UITableViewController {
    var friends: [Friend] = []
    @IBOutlet weak var avatarView: AvatarView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        generateFriends()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    private func generateFriends() {
        let friend1 = Friend(friendName: "Bob", friendAvatarURL: "cat", friendPhotoAlbum: ["man", "man", "man", "group2"])
        let friend2 = Friend(friendName: "Paul", friendAvatarURL: "man", friendPhotoAlbum: ["man", "man", "man"])
        let friend3 = Friend(friendName: "Lora", friendAvatarURL: "woman", friendPhotoAlbum: ["woman", "woman", "woman", "group1"])
        let friend4 = Friend(friendName: "Jane", friendAvatarURL: "woman", friendPhotoAlbum: ["woman", "woman", "woman"])
        
        friends.append(friend1)
        friends.append(friend2)
        friends.append(friend3)
        friends.append(friend4)
        
        tableView.reloadData()
    }
    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 1
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FriendCell", for: indexPath) as! FriendsTableViewCell

        let friend = friends[indexPath.row]
        cell.friendName.text = friend.friendName
        //cell.friendImage.image = UIImage.init(named: friend.friendAvatarURL)
        cell.avatarView.imageView.image = UIImage.init(named: friend.friendAvatarURL)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedFriend = friends[indexPath.row]
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "PhotoViewComtrollerKey") as! PhotosCollectionViewController
        vc.selectedModel = selectedFriend
        self.show(vc, sender: nil)
    }
    
    
//    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
//        return
//    }

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
