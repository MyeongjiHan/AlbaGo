//
//  mainTableViewController.swift
//  new
//
//  Created by CAUAD17 on 2018. 7. 24..
//  Copyright © 2018년 CAUAD17. All rights reserved.
//
//  알바고 - 아르바이트생을 위한 시급 계산 및 정보 제공 앱

import UIKit

class mainTableViewController: UITableViewController {

    //하나의 cell안에 들어갈 배열 안의 내용 구조체로 구성
    struct WorkingRecord {
        var date:String //근무한 날짜와 요일
        var time:String //근무한 시간
        var payment:String //하루 급여
    }
    
    //cell에 입력할 배열
    var dayRecord:[WorkingRecord] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        dayRecord.append(WorkingRecord(date: " 7월 3일(화)",time: "6시간 30분", payment: "49,400원"))
        dayRecord.append(WorkingRecord(date: " 7월 4일(수)",time: "8시간", payment: "60,600원"))
        dayRecord.append(WorkingRecord(date: " 7월 6일(금)",time: "4시간 10분", payment: "31,666원"))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dayRecord.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        // Configure the cell...
        guard let myCell = cell as? mainTableViewCell else {
            return cell
        }
        
        myCell.dateLabel.text = dayRecord[indexPath.row].date
        myCell.timeLabel.text = dayRecord[indexPath.row].time
        myCell.paymentLabel.text = dayRecord[indexPath.row].payment
            
        return myCell
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
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
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
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}

class mainTableViewCell: UITableViewCell {
    @IBOutlet weak var dateLabel: UILabel! //근무 날짜 표시하는 label
    @IBOutlet weak var timeLabel: UILabel! //근무 시간 표시하는 label
    @IBOutlet weak var paymentLabel: UILabel! //하루 급여 표시하는 label
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
