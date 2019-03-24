//
//  secondViewController.swift
//  SMT
//
//  Created by DaliaDiab on 3/19/19.
//  Copyright © 2019 DaliaDiab. All rights reserved.
//

import UIKit
struct Headline {
    
    var id : Int
    var title : String
    
    var image : String
    
}


class secondViewController: UIViewController  , UITableViewDataSource , UITableViewDelegate{

    @IBOutlet weak var imProfile: UIImageView!
   
    @IBOutlet weak var confirmBtn: UIButton!
    
    var headlines = [
        Headline(id: 1, title: "الرئسية", image: "homemenu"),
        Headline(id: 2, title: "حسابي" ,  image: "accmenu"),
        Headline(id: 3, title: "مزايدات مشترك بها",  image: "bidmenu"),
        Headline(id: 4, title: "المحفظة",  image: "walletmenu"),
        Headline(id: 5, title: "الاسئلة الشاعة",  image: "questionsmenu"),
        Headline(id: 6, title: "الشروط و الاحكام",  image: "conditionsmenu"),

        Headline(id: 8, title: "اتصل بنا",  image: "contactusmenu"),
        Headline(id: 9, title: "تسجيل الخروج",  image: "signoutmenu")
    ]
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
       

        imProfile.RoundImage()
        confirmBtn.RoundBtn()
      
        

    }
  
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return headlines.count
    }
    //    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    //         var cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! TableViewCell
    //        cell.menuLbl.text = items[indexPath.row]
    //        return cell
    //    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath) as! MyTableViewCell
        let headline = headlines[indexPath.row]
        
        //cell.textLabel?.text = headline.title
        cell.icon?.image = UIImage(named: headline.image)
        cell.menuLbl.text = headline.title
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
         return 44;
    }

}
